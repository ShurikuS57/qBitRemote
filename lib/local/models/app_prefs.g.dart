// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_prefs.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppPrefsAdapter extends TypeAdapter<AppPrefs> {
  @override
  final int typeId = 3;

  @override
  AppPrefs read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppPrefs(
      timeoutUpdate: fields[0] as int,
      sequentialDownload: fields[1] as bool,
      downloadFirst: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, AppPrefs obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.timeoutUpdate)
      ..writeByte(1)
      ..write(obj.sequentialDownload)
      ..writeByte(2)
      ..write(obj.downloadFirst);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppPrefsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
