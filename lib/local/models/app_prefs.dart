import 'package:hive/hive.dart';

part 'app_prefs.g.dart';

@HiveType(typeId: 3)
class AppPrefs {
  AppPrefs({
    this.timeoutUpdate = 3,
    this.sequentialDownload = false,
    this.downloadFirst = false,
  });

  @HiveField(0)
  int timeoutUpdate;

  @HiveField(1)
  bool sequentialDownload;

  @HiveField(2)
  bool downloadFirst;

  @override
  String toString() {
    return 'AppPrefs{timeoutUpdate: $timeoutUpdate, sequentialDownload: $sequentialDownload, downloadFirst: $downloadFirst}';
  }
}
