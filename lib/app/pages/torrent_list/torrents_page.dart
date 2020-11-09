import 'dart:async';

import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_app_bar.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_cubit.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:focus_detector/focus_detector.dart';

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
    context.bloc<TorrentListCubit>().loadTorrents();
    _updateTimer?.cancel();
    int updateSeconds = await context.bloc<TorrentListCubit>().getUpdateTimeSettings();
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
          title: Text(AppLocalizations.of(context).torrentList),
          actions: [
            IconButton(
              icon: Icon(Icons.settings_applications),
              onPressed: () {
                Navigator.pushNamed(context, Routes.appSettingsPage);
              },
            ),
          ],
        ),
        selectingActions: [
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {
              final selectedItems = context
                  .bloc<MultiSelectCubit>()
                  .getSelectedItems<TorrentEntity>();
              context.bloc<TorrentListCubit>().downloadCommand(selectedItems);
              context.bloc<MultiSelectCubit>().closeSelectedMode();
            },
          ),
          IconButton(
            icon: Icon(Icons.pause),
            onPressed: () {
              final selectedItems = context
                  .bloc<MultiSelectCubit>()
                  .getSelectedItems<TorrentEntity>();
              context.bloc<TorrentListCubit>().pauseCommand(selectedItems);
              context.bloc<MultiSelectCubit>().closeSelectedMode();
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              final selectedItems = context
                  .bloc<MultiSelectCubit>()
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

  void _showDeleteDialog(BuildContext context, List<TorrentEntity> list) {
    MaterialDialog(context)
      ..title = AppLocalizations.of(context).questionDelete
      ..body = AppLocalizations.of(context).questionDeleteItems
      ..positiveButtonText = AppLocalizations.of(context).delete
      ..negativeButtonText = AppLocalizations.of(context).cancel
      ..setPositiveButtonCallback((dialog) {
        final isDeleteAllData = dialog.checkboxList.first.isChecked;
        context.bloc<TorrentListCubit>().deleteTorrents(list, isDeleteAllData);
        context.bloc<MultiSelectCubit>().closeSelectedMode();
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
      listener: (context, state) {
        if (state is ShowError) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
          ));
        } else if (state is DeleteTorrentsSuccess) {
          context.bloc<TorrentListCubit>().loadTorrents();
        }
      },
      builder: (context, state) {
        if (state is TorrentsInitial) {
          context.bloc<TorrentListCubit>().loadTorrents();
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
