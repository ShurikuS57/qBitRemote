import 'package:qBitRemote/api/models/file_entity.dart';

class PathParser {
  final List<FileEntity> _files;
  List<FileTreeNode> treeData = [];

  PathParser(this._files) {
    _files.forEach((item) {
      FileTreeNode? currentLevel;
      List<String> split = item.path.split("/");
      _recursiveOperation(currentLevel, item, split, 0);
    });
  }

  FileTreeNode? _findFromChildren(FileTreeNode currentLevel, String split) {
    for (final item in currentLevel.children) {
      if (item.path == split) {
        return item;
      }
    }
    return null;
  }

  FileTreeNode? _findFromTreeData(String split) {
    for (final item in treeData) {
      if (item.path == split) {
        return item;
      }
    }
    return null;
  }

  void _recursiveOperation(FileTreeNode? currentLevel, FileEntity fileEntity,
      List<String> split, int currentPosition) {
    if (currentLevel == null && split.length > 0) {
      FileTreeNode? find = _findFromTreeData(split[currentPosition]);
      if (find != null) {
        currentLevel = find;
      } else {
        currentLevel = FileTreeNode(split[currentPosition]);
        treeData.add(currentLevel);
      }
    } else {
      FileTreeNode? find =
          _findFromChildren(currentLevel!, split[currentPosition]);
      if (find != null) {
        currentLevel = find;
      } else {
        final newNode = FileTreeNode(split[currentPosition]);
        currentLevel.children.add(newNode);
        currentLevel = newNode;
      }
    }
    if (currentPosition + 1 < split.length) {
      _recursiveOperation(currentLevel, fileEntity, split, currentPosition + 1);
    } else {
      currentLevel.fileEntity = fileEntity;
    }
  }
}

class FileTreeNode {
  final String path;
  List<FileTreeNode> children = [];
  FileEntity? fileEntity;

  FileTreeNode(this.path);

  @override
  String toString() {
    return 'TreeNode{path: $path, children: $children}';
  }
}
