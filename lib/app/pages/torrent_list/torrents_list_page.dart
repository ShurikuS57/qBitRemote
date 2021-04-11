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
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/routes.dart';

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
              onSelected: _handleMainPopupMenuItemClick,
              itemBuilder: (BuildContext context) {
                return {"Resume all", "Pause all"}
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
                    value: SelectedPopupMenuType.Delete.value,
                    child: Text(SelectedPopupMenuType.Delete.value)),
                PopupSubMenuItem<String>(
                  title: SelectedPopupMenuType.QueueGroup.value,
                  items: [
                    SelectedPopupMenuType.QueueMax.value,
                    SelectedPopupMenuType.QueueUp.value,
                    SelectedPopupMenuType.QueueDown.value,
                    SelectedPopupMenuType.QueueMin.value,
                  ],
                  onSelected: _handleQueuePopupMenuItemClick,
                ),
              ];
            },
          )
        ],
      ),
      backgroundColor: AppColors.primaryBackground,
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
            color: AppColors.primaryBackground,
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

  void _handleMainPopupMenuItemClick(String value) {
    switch (value) {
      case "Resume all":
        {
          context.read<TorrentListCubit>().downloadCommandByHash("all");
          break;
        }
      case "Pause all":
        {
          context.read<TorrentListCubit>().pauseCommandByHash("all");
          break;
        }
    }
  }

  void _handleSelectedPopupMenuItemClick(String value) {
    if (value == SelectedPopupMenuType.Delete.value) {
      final selectedItems =
          context.read<MultiSelectCubit>().getSelectedItems<TorrentEntity>();
      _showDeleteDialog(context, selectedItems);
    }
  }

  void _handleQueuePopupMenuItemClick(String value) {
    final selectedItems =
        context.read<MultiSelectCubit>().getSelectedItems<TorrentEntity>();
    SelectedPopupMenuType priority = SelectedPopupMenuType.QueueMax;
    if (value == SelectedPopupMenuType.QueueMax.value) {
      priority = SelectedPopupMenuType.QueueMax;
    } else if (value == SelectedPopupMenuType.QueueUp.value) {
      priority = SelectedPopupMenuType.QueueUp;
    } else if (value == SelectedPopupMenuType.QueueDown.value) {
      priority = SelectedPopupMenuType.QueueDown;
    } else if (value == SelectedPopupMenuType.QueueMin.value) {
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
            id: "1", title: Text(context.intl().questionDeleteWithData))
      ]
      ..show();
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

extension SelectedMenuExtention on SelectedPopupMenuType {
  String get value {
    switch (this) {
      case SelectedPopupMenuType.Delete:
        return "Delete";
      case SelectedPopupMenuType.QueueMax:
        return "Move to top";
      case SelectedPopupMenuType.QueueUp:
        return "Move up";
      case SelectedPopupMenuType.QueueDown:
        return "Move down";
      case SelectedPopupMenuType.QueueMin:
        return "Move to bottom";
      case SelectedPopupMenuType.QueueGroup:
        return "Queue";
      default:
        return "";
    }
  }
}
