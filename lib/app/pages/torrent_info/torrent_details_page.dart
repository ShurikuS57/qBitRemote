
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:qBitRemote/app/pages/torrent_info/torrent_file_page.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_cubit.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_app_bar.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'torrent_info_page.dart';

class TorrentDetailsScreen extends StatefulWidget {
  @override
  _TorrentDetailsScreenState createState() => _TorrentDetailsScreenState();
}

class _TorrentDetailsScreenState extends State<TorrentDetailsScreen> {
  Timer _updateTimer;
  String _torrentHash = "";
  final _resumeDetectorKey = UniqueKey();

  @override
  void initState() {
    _restartUpdateTimer();
    super.initState();
  }

  void _restartUpdateTimer() async {
    context.read<TorrentListCubit>().loadTorrentInfo(_torrentHash);
    _updateTimer?.cancel();
    int updateSeconds = await context.read<TorrentListCubit>().getUpdateTimeSettings();
    _updateTimer = Timer.periodic(Duration(seconds: updateSeconds), (timer) {
      _restartUpdateTimer();
    });
  }

  @override
  void dispose() {
    _updateTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _torrentHash = ModalRoute.of(context).settings.arguments;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primaryBackground,
        appBar: MultiselectAppBar(
          appBar: _buildAppBar(context),
        ),
        body: FocusDetector(
          key: _resumeDetectorKey,
          child: TabBarView(
            children: [
              TorrentInfoScreen(),
              TorrentFilesScreen()
            ],
          ),
          onFocusGained: () {
            _restartUpdateTimer();
          },
          onFocusLost: () {
            _updateTimer?.cancel();
          },
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(AppLocalizations.of(context).torrentInfo),
      actions: [
        IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            context
                .read<TorrentListCubit>()
                .downloadCommandByHash(_torrentHash);
          },
        ),
        IconButton(
          icon: Icon(Icons.pause),
          onPressed: () {
            context.read<TorrentListCubit>().pauseCommandByHash(_torrentHash);
          },
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            _showDeleteDialog(context, _torrentHash);
          },
        )
      ],
      bottom: TabBar(
        tabs: [
          Tab(text: "Info".toUpperCase(),),
          Tab(text: "Files".toUpperCase(),),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String _hash) {
    MaterialDialog(context)
      ..title = AppLocalizations.of(context).questionDeleteTorrent
      ..body = AppLocalizations.of(context).questionSureDelete
      ..positiveButtonText = AppLocalizations.of(context).delete
      ..negativeButtonText = AppLocalizations.of(context).cancel
      ..setPositiveButtonCallback((dialog) {
        final isDeleteAllData = dialog.checkboxList.first.isChecked;
        context
            .read<TorrentListCubit>()
            .deleteTorrentByHash(_hash, isDeleteAllData);
      })
      ..checkboxList = [
        CheckboxEntity(
            id: "1",
            title: Text(AppLocalizations.of(context).questionDeleteWithData))
      ]
      ..show();
  }
}

