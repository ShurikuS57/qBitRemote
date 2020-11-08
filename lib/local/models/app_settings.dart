import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class AppSettings extends HiveObject {
  AppSettings({
    this.timeoutUpdate,
  });

  @HiveField(0)
  int timeoutUpdate;

  @HiveField(1)
  int downloadSpeed;

  @HiveField(2)
  int uploadSpeed;
}

class AppSettingsAdapter extends TypeAdapter<AppSettings> {
  @override
  int get typeId => 1;

  @override
  AppSettings read(BinaryReader reader) {
    return AppSettings(timeoutUpdate: 3)
      ..timeoutUpdate = reader.read() ?? 3
      ..downloadSpeed = reader.read() ?? 0
      ..uploadSpeed = reader.read() ?? 0;
  }

  @override
  void write(BinaryWriter writer, AppSettings obj) {
    writer.write(obj.timeoutUpdate);
    writer.write(obj.downloadSpeed);
    writer.write(obj.uploadSpeed);
  }
}
