import 'package:qBitRemote/api/models/file_entity.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_cubit.dart';
import 'package:qBitRemote/app/utils/format_helper.dart';
import 'package:qBitRemote/app/utils/state_helper.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TorrentInfoScreen extends StatefulWidget {
  @override
  _TorrentInfoScreenState createState() => _TorrentInfoScreenState();
}

class _TorrentInfoScreenState extends State<TorrentInfoScreen> {
  String _torrentHash = "";

  @override
  Widget build(BuildContext context) {
    _torrentHash = ModalRoute.of(context).settings.arguments;
    return BlocConsumer<TorrentListCubit, TorrentListState>(
        listener: (context, state) {
      if (state is ShowError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.error),
        ));
      } else if (state is GoToBackScreen) {
        Navigator.pop(context);
      }
    }, builder: (context, state) {
      if (state is TorrentsInitial) {
        context.watch<TorrentListCubit>().loadTorrentInfo(_torrentHash);
        return Center(
          child: Container(
            child: Text(AppLocalizations.of(context).emptyTorrentInfo),
          ),
        );
      } else if (state is ShowTorrentInfo) {
        final torrent = state.torrent;
        return ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildNameRow(torrent),
                    SizedBox(
                      height: 24,
                    ),
                    _buildCompleteRow(torrent),
                    SizedBox(
                      height: 8,
                    ),
                    _buildProgressRow(torrent),
                    SizedBox(
                      height: 8,
                    ),
                    _buildSpeedRow(torrent),
                    SizedBox(
                      height: 10,
                    ),
                    _buildInfoText("Status: " + StateHelper.statusStr(torrent.state)),
                    SizedBox(
                      height: 20,
                    ),
                    _buildInfoText(
                      AppLocalizations.of(context).fullSize +
                          " " +
                          torrent.size,
                    ),
                    _buildInfoText(
                        AppLocalizations.of(context).hash + " " + torrent.hash),
                  ],
                ),
              ),
            ),
          ],
        );
      } else {
        return Center(
          child: Container(
            child: Text(AppLocalizations.of(context).emptyTorrentInfo),
          ),
        );
      }
    });
  }

  Text _buildInfoText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }

  Row _buildSpeedRow(TorrentEntity torrent) {
    return Row(
      children: [
        Image(
          image: AssetImage(AppIcons.forwardGreen),
          width: 24,
          height: 24,
        ),
        Text(
          torrent.downloadSpeed,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Expanded(
          child: SizedBox(),
        ),
        Image(
          image: AssetImage(AppIcons.forwardRed),
          width: 24,
          height: 24,
        ),
        Text(
          torrent.uploadSpeed,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  ClipRRect _buildProgressRow(TorrentEntity torrent) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: LinearProgressIndicator(
        backgroundColor: AppColors.progressBackgroundColor,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.progressValueColor),
        minHeight: 10,
        value: torrent.progress,
      ),
    );
  }

  Row _buildCompleteRow(TorrentEntity torrent) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)
              .percentToComplete((torrent.progress * 100).toInt())
              .toUpperCase(),
          style: TextStyle(
              color: AppColors.textTitle1Color,
              fontSize: 14,
              fontWeight: FontWeight.w700),
        ),
        Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.access_time_outlined,
          color: AppColors.textSubtitle1Color,
          size: 16,
        ),
        SizedBox(
          width: 2,
        ),
        Text(torrent.estimateTime,
            style: TextStyle(
                fontSize: 14,
                color: AppColors.textSubtitle1Color,
                fontWeight: FontWeight.w300)),
      ],
    );
  }

  Row _buildNameRow(TorrentEntity torrent) {
    return Row(
      children: [
        Icon(
          StateHelper.getIconByTorrentState(torrent.state),
          color: AppColors.primary,
          size: 28,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            torrent.name,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(
                color: AppColors.textTitle1Color,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
