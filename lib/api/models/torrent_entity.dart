import 'package:qBitRemote/app/utils/format_helper.dart';
import 'package:qBitRemote/app/utils/path_parser.dart';

class TorrentEntity {

  TorrentEntity({this.name, this.hash, this.state, this.progress, this.fileTreeData, this.size, this.estimateTime, this.downloadSpeed, this.uploadSpeed, this.priority});

  final String name;
  final String hash;
  final String state;
  final double progress;
  final List<FileTreeNode> fileTreeData;
  final String size;
  final String estimateTime;
  final String downloadSpeed;
  final String uploadSpeed;
  final int priority;

  factory TorrentEntity.fromJson(Map<String, dynamic> json) {
    return TorrentEntity(
      name: json["name"].toString(),
      hash: json["hash"].toString(),
      state: json["state"].toString(),
      progress: json["progress"].toDouble(),
      fileTreeData: [],
      size: FormatHelper.formatBytes(json["size"]),
      estimateTime: FormatHelper.formatSeconds(json["eta"]),
      downloadSpeed: FormatHelper.formatBytes(json["dlspeed"], 1) + "/s",
      uploadSpeed: FormatHelper.formatBytes(json["upspeed"], 1) + "/s",
      priority: json["priority"],
    );
  }
}
