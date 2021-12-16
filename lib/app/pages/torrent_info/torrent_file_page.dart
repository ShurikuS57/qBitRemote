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
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';
import 'package:qBitRemote/commons/extensions/theme_ext.dart';

class TorrentFilesScreen extends StatefulWidget {
  @override
  _TorrentFilesScreenState createState() => _TorrentFilesScreenState();
}

class _TorrentFilesScreenState extends State<TorrentFilesScreen> {
  var _positionFile = 0;
  var _torrentHash = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TorrentListCubit, TorrentListState>(
        buildWhen: (previous, current) =>
            current is ShowTorrentInfo || current is ShowLoader,
        builder: (context, state) {
          if (state is ShowTorrentInfo) {
            final torrent = state.torrent;
            _torrentHash = torrent.hash;
            _positionFile = 0;
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

  Future<void> _askedToLead(FileEntity file) async {
    int? result = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(context.intl().selectPriority),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 0);
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Text(StateHelper.convertPriority(context, 0)),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Text(StateHelper.convertPriority(context, 1)),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 6);
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Text(StateHelper.convertPriority(context, 6)),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 7);
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Text(
                  StateHelper.convertPriority(context, 7),
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          );
        });
    if (result != null) {
      context
          .read<TorrentListCubit>()
          .changePriorityFile(_torrentHash, file.position.toString(), result);
    }
  }

  Parent _recursiveBuildView(
      FileTreeNode currentNode, bool isRoot, int deepFolderLevel) {
    FileEntity? file = currentNode.fileEntity;
    if (file != null) {
      file.position = _positionFile;
      _positionFile++;
    }
    final parent = Parent(
        parent: file != null
            ? InkWell(
                onTap: () {
                  _askedToLead(file);
                },
                child: Container(
                    margin: EdgeInsets.only(
                        left: isRoot ? 8.0 : 8.0 * deepFolderLevel, right: 8),
                    child: _buildFileInfoCard(file, currentNode.path)),
              )
            : Container(
                margin:
                    EdgeInsets.only(left: isRoot ? 0.0 : 8.0 * deepFolderLevel),
                child: ListTile(
                  title: Text(
                    currentNode.path,
                    style: context.textTheme().bodyText2,
                  ),
                  leading: Icon(Icons.folder,
                      color: Theme.of(context)
                          .inputDecorationTheme
                          .enabledBorder
                          ?.borderSide
                          .color),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Theme.of(context)
                          .inputDecorationTheme
                          .enabledBorder
                          ?.borderSide
                          .color),
                ),
              ),
        childList: ChildList(
          children: currentNode.children
              .map((e) => _recursiveBuildView(e, false, deepFolderLevel + 1))
              .toList(),
        ));
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
                SizedBox(width: double.infinity, child: Text(fileName, style: context.textTheme().bodyText1,)),
                Text(
                  "Size: ${FormatHelper.formatBytes(fileInfo.size)} · ${StateHelper.convertPriority(context, fileInfo.priority)}",
                  style: context.textTheme().caption,
                )
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
