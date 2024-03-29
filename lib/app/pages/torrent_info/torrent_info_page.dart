import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_cubit.dart';
import 'package:qBitRemote/app/utils/state_helper.dart';
import 'package:qBitRemote/app/widgets/loader_layout.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/commons/icons.dart';
import 'package:qBitRemote/commons/extensions/theme_ext.dart';

class TorrentInfoScreen extends StatefulWidget {
  @override
  _TorrentInfoScreenState createState() => _TorrentInfoScreenState();
}

class _TorrentInfoScreenState extends State<TorrentInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TorrentListCubit, TorrentListState>(
        listener: (context, state) {
      if (state is ShowError) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.error),
        ));
      } else if (state is GoToBackScreen) {
        Navigator.pop(context);
      }
    }, buildWhen: (previous, current) {
      return current is TorrentsInitial ||
          current is ShowLoader ||
          current is ShowTorrentInfo;
    }, builder: (context, state) {
      if (state is ShowLoader) {
        return LoaderLayout();
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
                    _buildInfoText(
                        "Status: " + StateHelper.statusStr(torrent.state)),
                    SizedBox(
                      height: 20,
                    ),
                    _buildInfoText(
                      context.intl().fullSize + " " + torrent.size,
                    ),
                    _buildInfoText(context.intl().hash + " " + torrent.hash),
                  ],
                ),
              ),
            ),
          ],
        );
      } else {
        return Center(
          child: Container(
            child: Text(context.intl().emptyTorrentInfo),
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
          AppLocalizations.of(context)!
              .percentToComplete((torrent.progress * 100).toInt())
              .toUpperCase(),
          style: Theme.of(context).textTheme.caption,
        ),
        Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.access_time_outlined,
          color: Theme.of(context).textTheme.caption?.color,
          size: 16,
        ),
        SizedBox(
          width: 2,
        ),
        Text(torrent.estimateTime,
            style: Theme.of(context).textTheme.caption),
      ],
    );
  }

  Row _buildNameRow(TorrentEntity torrent) {
    return Row(
      children: [
        Icon(
          StateHelper.getIconByTorrentState(torrent.state),
          color: context.theme().primaryColor,
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
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ],
    );
  }
}
