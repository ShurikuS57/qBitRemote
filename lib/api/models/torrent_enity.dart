import 'package:qBitRemote/app/utils/format_helper.dart';

import 'file_entity.dart';

class TorrentEntity {

  TorrentEntity({this.name, this.hash, this.state, this.progress, this.files, this.size, this.estimateTime, this.downloadSpeed, this.uploadSpeed});

  final String name;
  final String hash;
  final String state;
  final double progress;
  final List<FileEntity> files;
  final String size;
  final String estimateTime;
  final String downloadSpeed;
  final String uploadSpeed;

  factory TorrentEntity.fromJson(Map<String, dynamic> json) {
    return TorrentEntity(
      name: json["name"].toString(),
      hash: json["hash"].toString(),
      state: json["state"].toString(),
      progress: json["progress"].toDouble(),
      files: List<FileEntity>(),
      size: FormatHelper.formatBytes(json["size"]),
      estimateTime: FormatHelper.formatSeconds(json["eta"]),
      downloadSpeed: FormatHelper.formatBytes(json["dlspeed"], 1) + "/s",
      uploadSpeed: FormatHelper.formatBytes(json["upspeed"], 1) + "/s",
    );
  }
}
