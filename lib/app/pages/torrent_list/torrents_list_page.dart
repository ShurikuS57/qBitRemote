import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/app/widgets/loader_layout.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_app_bar.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_cubit.dart';
import 'package:qBitRemote/app/widgets/popup_submenu_item.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/routes.dart';
import 'package:qBitRemote/commons/extensions/theme_ext.dart';

import 'torrents_list_cubit.dart';
import 'widgets/torrents_empty.dart';
import 'widgets/torrents_loading.dart';
import 'widgets/torrents_viewer.dart';

class TorrentListScreen extends StatefulWidget {
  @override
  _TorrentListScreenState createState() => _TorrentListScreenState();
}

class _TorrentListScreenState extends State<TorrentListScreen> {
  Timer? _updateTimer;
  final _resumeDetectorKey = UniqueKey();

  @override
  void initState() {
    _restartUpdateTimer();
    super.initState();
  }

  void _restartUpdateTimer() async {
    context.read<TorrentListCubit>().loadTorrents();
    _updateTimer?.cancel();
    int updateSeconds =
        await context.read<TorrentListCubit>().getUpdateTimeSettings();
    _updateTimer = Timer.periodic(Duration(seconds: updateSeconds), (timer) {
      _restartUpdateTimer();
    });
  }

  Future<void> _refreshData() async {
    _restartUpdateTimer();
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MultiselectAppBar(
        appBar: AppBar(
          title: SizedBox(
            child: buildAppBarBody(context),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings_applications),
              onPressed: () {
                Navigator.pushNamed(context, Routes.appSettingsPage);
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) =>
                  _handleMainPopupMenuItemClick(context, value),
              itemBuilder: (BuildContext context) {
                return {context.intl().resumeAll, context.intl().pauseAll}
                    .map((e) => PopupMenuItem<String>(
                          value: e,
                          child: Text(e),
                        ))
                    .toList();
              },
            )
          ],
        ),
        selectingActions: [
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              final selectedItems = context
                  .read<MultiSelectCubit>()
                  .getSelectedItems<TorrentEntity>();
              context.read<TorrentListCubit>().downloadCommand(selectedItems);
              context.read<MultiSelectCubit>().closeSelectedMode();
            },
          ),
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: () {
              final selectedItems = context
                  .read<MultiSelectCubit>()
                  .getSelectedItems<TorrentEntity>();
              context.read<TorrentListCubit>().pauseCommand(selectedItems);
              context.read<MultiSelectCubit>().closeSelectedMode();
            },
          ),
          PopupMenuButton<String>(
            onSelected: _handleSelectedPopupMenuItemClick,
            itemBuilder: (context) {
              return [
                PopupMenuItem<String>(
                    value: getValue(SelectedPopupMenuType.Delete),
                    child: Text(getValue(SelectedPopupMenuType.Delete))),
                PopupSubMenuItem<String>(
                  title: getValue(SelectedPopupMenuType.QueueGroup),
                  items: [
                    getValue(SelectedPopupMenuType.QueueMax),
                    getValue(SelectedPopupMenuType.QueueUp),
                    getValue(SelectedPopupMenuType.QueueDown),
                    getValue(SelectedPopupMenuType.QueueMin),
                  ],
                  onSelected: _handleQueuePopupMenuItemClick,
                ),
              ];
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, Routes.addTorrentPage);
          }),
      body: FocusDetector(
        key: _resumeDetectorKey,
        child: RefreshIndicator(
          onRefresh: _refreshData,
          child: Container(
            color: context.theme().scaffoldBackgroundColor,
            child: _TorrentsScreenView(),
          ),
        ),
        onFocusGained: () {
          _restartUpdateTimer();
        },
        onFocusLost: () {
          _updateTimer?.cancel();
        },
      ),
    );
  }

  GestureDetector buildAppBarBody(BuildContext context) {
    String title = "";
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.serverListPage);
      },
      child: BlocBuilder<TorrentListCubit, TorrentListState>(
          buildWhen: (context, state) {
        return state is ServerTitle;
      }, builder: (context, state) {
        if (state is ServerTitle) {
          title = state.host.name + "\n" + state.host.host;
        }
        return Text(
          title,
          style: TextStyle(fontSize: 16),
        );
      }),
    );
  }

  void _handleMainPopupMenuItemClick(BuildContext context, String value) {
    String resumeAllStr = context.intl().resumeAll;
    String pauseAllStr = context.intl().pauseAll;
    if (value == resumeAllStr) {
      context.read<TorrentListCubit>().downloadCommandByHash("all");
    } else if (value == pauseAllStr) {
      context.read<TorrentListCubit>().pauseCommandByHash("all");
    }
  }

  void _handleSelectedPopupMenuItemClick(String value) {
    if (value == getValue(SelectedPopupMenuType.Delete)) {
      final selectedItems =
          context.read<MultiSelectCubit>().getSelectedItems<TorrentEntity>();
      _showDeleteDialog(context, selectedItems);
    }
  }

  void _handleQueuePopupMenuItemClick(String value) {
    final selectedItems =
        context.read<MultiSelectCubit>().getSelectedItems<TorrentEntity>();
    SelectedPopupMenuType priority = SelectedPopupMenuType.QueueMax;
    if (value == getValue(SelectedPopupMenuType.QueueMax)) {
      priority = SelectedPopupMenuType.QueueMax;
    } else if (value == getValue(SelectedPopupMenuType.QueueUp)) {
      priority = SelectedPopupMenuType.QueueUp;
    } else if (value == getValue(SelectedPopupMenuType.QueueDown)) {
      priority = SelectedPopupMenuType.QueueDown;
    } else if (value == getValue(SelectedPopupMenuType.QueueMin)) {
      priority = SelectedPopupMenuType.QueueMin;
    }
    context.read<TorrentListCubit>().changePriority(selectedItems, priority);
    context.read<MultiSelectCubit>().closeSelectedMode();
  }

  void _showDeleteDialog(BuildContext context, List<TorrentEntity> list) {
    MaterialDialog(context)
      ..title = context.intl().questionDelete
      ..body = context.intl().questionDeleteItems
      ..positiveButtonText = context.intl().delete
      ..negativeButtonText = context.intl().cancel
      ..setPositiveButtonCallback((dialog) {
        final isDeleteAllData = dialog.checkboxList.first.isChecked;
        context.read<TorrentListCubit>().deleteTorrents(list, isDeleteAllData);
        context.read<MultiSelectCubit>().closeSelectedMode();
      })
      ..checkboxList = [
        CheckboxEntity(
            id: "1",
            title: Text(
              context.intl().questionDeleteWithData,
              style: context.theme().dialogTheme.contentTextStyle,
            ))
      ]
      ..show();
  }

  String getValue(SelectedPopupMenuType type) {
    switch (type) {
      case SelectedPopupMenuType.Delete:
        return context.intl().delete;
      case SelectedPopupMenuType.QueueMax:
        return context.intl().moveToTop;
      case SelectedPopupMenuType.QueueUp:
        return context.intl().moveUp;
      case SelectedPopupMenuType.QueueDown:
        return context.intl().moveDown;
      case SelectedPopupMenuType.QueueMin:
        return context.intl().moveToBottom;
      case SelectedPopupMenuType.QueueGroup:
        return context.intl().queue;
      default:
        return "";
    }
  }
}

class _TorrentsScreenView extends StatelessWidget {
  const _TorrentsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TorrentListCubit, TorrentListState>(
      buildWhen: (previousState, state) {
        return !(state is ServerTitle);
      },
      listener: (context, state) {
        if (state is ShowError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
          ));
        } else if (state is DeleteTorrentsSuccess) {
          context.read<TorrentListCubit>().loadTorrents();
        }
      },
      builder: (context, state) {
        if (state is TorrentsInitial) {
          context.watch<TorrentListCubit>().loadTorrents();
          return const TorrentsEmptyWidget();
        } else if (state is TorrentsLoading) {
          return TorrentsLoadingWidget();
        } else if (state is TorrentsLoaded) {
          return TorrentsViewerWidget(
            torrents: state.torrents,
          );
        } else if (state is ShowLoader) {
          return LoaderLayout();
        } else {
          return Container();
        }
      },
    );
  }
}

enum SelectedPopupMenuType {
  Delete,
  QueueGroup,
  QueueUp,
  QueueDown,
  QueueMax,
  QueueMin
}
