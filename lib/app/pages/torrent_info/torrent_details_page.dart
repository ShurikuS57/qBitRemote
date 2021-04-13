import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:qBitRemote/app/pages/torrent_info/torrent_file_page.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_cubit.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_app_bar.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';

import 'torrent_info_page.dart';

class TorrentDetailsScreen extends StatefulWidget {
  @override
  _TorrentDetailsScreenState createState() => _TorrentDetailsScreenState();
}

class _TorrentDetailsScreenState extends State<TorrentDetailsScreen> {
  Timer? _updateTimer;
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
    int updateSeconds =
        await context.read<TorrentListCubit>().getUpdateTimeSettings();
    _updateTimer = Timer.periodic(Duration(seconds: updateSeconds), (timer) {
      _restartUpdateTimer();
    });
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _torrentHash = context.catchArgs();
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
            children: [TorrentInfoScreen(), TorrentFilesScreen()],
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
      title: Text(context.intl().torrentInfo),
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
        PopupMenuButton<String>(
          onSelected: (value) => _handleMainPopupMenuItemClick(context, value),
          itemBuilder: (BuildContext context) {
            return {
              context.intl().forceResume,
              context.intl().forceRecheck,
              context.intl().delete
            }
                .map((e) => PopupMenuItem<String>(
                      value: e,
                      child: Text(e),
                    ))
                .toList();
          },
        ),
      ],
      bottom: TabBar(
        tabs: [
          Tab(
            text: "Info".toUpperCase(),
          ),
          Tab(
            text: "Files".toUpperCase(),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String _hash) {
    MaterialDialog(context)
      ..title = context.intl().questionDeleteTorrent
      ..body = context.intl().questionSureDelete
      ..positiveButtonText = context.intl().delete
      ..negativeButtonText = context.intl().cancel
      ..setPositiveButtonCallback((dialog) {
        final isDeleteAllData = dialog.checkboxList.first.isChecked;
        context
            .read<TorrentListCubit>()
            .deleteTorrentByHash(_hash, isDeleteAllData);
      })
      ..checkboxList = [
        CheckboxEntity(
            id: "1", title: Text(context.intl().questionDeleteWithData))
      ]
      ..show();
  }

  _handleMainPopupMenuItemClick(BuildContext context, String value) {
    if (value == context.intl().delete) {
      _showDeleteDialog(context, _torrentHash);
    } else if (value == context.intl().forceResume) {
      context.read<TorrentListCubit>().forceResume([_torrentHash]);
    } else if (value == context.intl().forceRecheck) {
      context.read<TorrentListCubit>().forceRecheck([_torrentHash]);
    }
  }
}
