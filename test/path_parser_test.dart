import 'package:flutter_test/flutter_test.dart';
import 'package:qBitRemote/api/models/file_entity.dart';
import 'package:qBitRemote/app/utils/path_parser.dart';

void main() {
  List<FileEntity> files = [
    FileEntity(
        path:
            "path1/Bonus/Menu/TV 1 Menu 1.mkv",
        size: 99591890,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path:
            "path1/Bonus/Menu/TV 1 Menu 2.mkv",
        size: 100107352,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path:
            "path1/Sound/A/[1]TV 1 03.mka",
        size: 34567227,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path:
            "path1/Sound/B/[2]TV 1 07.mka",
        size: 34565360,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path:
            "path2/[51] TV 2 09.mkv",
        size: 1320777940,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path:
            "path2/[52] TV 2 10.mkv",
        size: 1394708681,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path: "[1000] TV 30 11.mkv",
        size: 1394708681,
        progress: 1.0,
        priority: 4),
    FileEntity(
        path: "[2000] TV 30 12.mkv",
        size: 1394708681,
        progress: 1.0,
        priority: 4),
  ];

  test('Parse paths node', () {
    final pathParser = PathParser(files);
  });
}