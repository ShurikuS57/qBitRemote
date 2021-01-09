import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_app_bar.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_cubit.dart';
import 'package:qBitRemote/commons/colors.dart';
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
  Timer _updateTimer;
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
              onSelected: _handleMenuClick,
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
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              final selectedItems = context
                  .read<MultiSelectCubit>()
                  .getSelectedItems<TorrentEntity>();
              _showDeleteDialog(context, selectedItems);
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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.serverListPage);
      },
      child: BlocConsumer<TorrentListCubit, TorrentListState>(
        buildWhen: (context, state) {
          return state is ServerTitle;
        },
        builder: (context, state) {
          String title = "";
          if (state is ServerTitle) {
            title = state.host.name + "\n" + state.host.host;
          }
          return Row(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            ],
          );
        },
        listener: (context, state) {
          return Row(
            children: [
              Text("2"),
            ],
          );
        },
      ),
    );
  }

  void _handleMenuClick(String value) {
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

  void _showDeleteDialog(BuildContext context, List<TorrentEntity> list) {
    MaterialDialog(context)
      ..title = AppLocalizations.of(context).questionDelete
      ..body = AppLocalizations.of(context).questionDeleteItems
      ..positiveButtonText = AppLocalizations.of(context).delete
      ..negativeButtonText = AppLocalizations.of(context).cancel
      ..setPositiveButtonCallback((dialog) {
        final isDeleteAllData = dialog.checkboxList.first.isChecked;
        context.read<TorrentListCubit>().deleteTorrents(list, isDeleteAllData);
        context.read<MultiSelectCubit>().closeSelectedMode();
      })
      ..checkboxList = [
        CheckboxEntity(
            id: "1",
            title: Text(AppLocalizations.of(context).questionDeleteWithData))
      ]
      ..show();
  }
}

class _TorrentsScreenView extends StatelessWidget {
  const _TorrentsScreenView({Key key}) : super(key: key);

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
        } else {
          return Container();
        }
      },
    );
  }
}
