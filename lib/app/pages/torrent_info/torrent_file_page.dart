import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/api/models/file_entity.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_cubit.dart';
import 'package:qBitRemote/app/utils/format_helper.dart';
import 'package:qBitRemote/app/utils/path_parser.dart';
import 'package:qBitRemote/app/utils/state_helper.dart';
import 'package:qBitRemote/app/widgets/loader_layout.dart';
import 'package:qBitRemote/app/widgets/tree_view.dart';
import 'package:qBitRemote/commons/colors.dart';

class TorrentFilesScreen extends StatefulWidget {
  @override
  _TorrentFilesScreenState createState() => _TorrentFilesScreenState();
}

class _TorrentFilesScreenState extends State<TorrentFilesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TorrentListCubit, TorrentListState>(
        buildWhen: (previous, current) =>
            current is ShowTorrentInfo || current is ShowLoader,
        builder: (context, state) {
          if (state is ShowTorrentInfo) {
            final torrent = state.torrent;
            return TreeView(
              parentList: _prepareTreeViewData(torrent.fileTreeData),
            );
          }
          if (state is ShowLoader) {
            return LoaderLayout();
          } else {
            return Container();
          }
        });
  }

  List<Parent> _prepareTreeViewData(List<FileTreeNode> data) {
    List<Parent> result = [];

    data.forEach((element) {
      result.add(_recursiveBuildView(element, true, 0));
    });
    return result;
  }

  Parent _recursiveBuildView(
      FileTreeNode currentNode, bool isRoot, int deepFolderLevel) {
    FileEntity? file = currentNode.fileEntity;
    final parent = Parent(
        parent: file != null
            ? Container(
                margin: EdgeInsets.only(
                    left: isRoot ? 8.0 : 8.0 * deepFolderLevel, right: 8),
                child: _buildFileInfoCard(file, currentNode.path))
            : Container(
                margin:
                    EdgeInsets.only(left: isRoot ? 0.0 : 8.0 * deepFolderLevel),
                child: ListTile(
                  title: Text(currentNode.path),
                  leading: Icon(Icons.folder),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
        childList: ChildList(
          children: currentNode.children
              .map((e) => _recursiveBuildView(e, false, deepFolderLevel + 1))
              .toList(),
        ));
    // if (currentNode.fileEntity == null) {
    //   deepFolderLevel ++;
    // }
    return parent;
  }

  Stack _buildFileInfoCard(FileEntity fileInfo, String fileName) {
    return Stack(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: double.infinity, child: Text(fileName)),
                Text(
                    "Size: ${FormatHelper.formatBytes(fileInfo.size)} · ${StateHelper.convertPriority(fileInfo.priority)}")
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
                  value: fileInfo.progress,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
