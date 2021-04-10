import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/utils/state_helper.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_cubit.dart';
import 'package:qBitRemote/app/widgets/multiselect/multi_select_list_view.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/routes.dart';

class TorrentsViewerWidget extends StatefulWidget {
  TorrentsViewerWidget({Key? key, required this.torrents}) : super(key: key);

  final List<TorrentEntity> torrents;

  @override
  _TorrentsViewerWidgetState createState() => _TorrentsViewerWidgetState();
}

class _TorrentsViewerWidgetState extends State<TorrentsViewerWidget> {
  @override
  Widget build(BuildContext context) {
    List<TorrentItem> items =
        widget.torrents.map((e) => TorrentItem(item: e)).toList();
    return ListViewSelected(
      items: items,
      selectedColor: AppColors.multiselectionItem.withAlpha(100),
      onChangeSelected: (widget, isSelected) {
        if (widget is TorrentItem) {
          if (isSelected) {
            context
                .read<MultiSelectCubit>()
                .addSelectedItem(widget.item.hash, widget.item);
          } else {
            context
                .read<MultiSelectCubit>()
                .removeSelectedItem(widget.item.hash, widget.item);
          }
        }
      },
      onTabItem: (widget) {
        if (widget is TorrentItem) {
          Navigator.pushNamed(context, Routes.torrentInfoPage,
              arguments: widget.item.hash);
        }
      },
    );
  }
}

class TorrentItem extends StatelessWidget {
  final TorrentEntity item;

  TorrentItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Stack(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 0, top: 0, bottom: 0, right: 16),
                          child: Icon(
                            StateHelper.getIconByTorrentState(item.state),
                            color: AppColors.primary,
                            size: 38,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  color: AppColors.textTitle1Color,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Container(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.file_download,
                                  color: AppColors.textSubtitle1Color,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(item.size,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.textSubtitle1Color)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("·"),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.access_time_outlined,
                                  color: AppColors.textSubtitle1Color,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(item.estimateTime,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.textSubtitle1Color)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 6,
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  child: LinearProgressIndicator(
                    backgroundColor: AppColors.progressBackgroundColor,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.progressValueColor),
                    value: item.progress,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
