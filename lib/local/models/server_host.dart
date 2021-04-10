import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class ServerHost extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String host;

  @HiveField(2)
  String login;

  @HiveField(3)
  String password;

  @HiveField(4)
  bool? isSelected;

  ServerHost({
    required this.name,
    required this.host,
    required this.login,
    required this.password,
    this.isSelected = false,
  });

  String getConnectUrl() {
    final hostTrim = this.host.trim();
    if (hostTrim.contains("http://") || hostTrim.contains("https://")) {
      return hostTrim;
    } else {
      return "http://" + hostTrim;
    }
  }
}

class ServerHostAdapter extends TypeAdapter<ServerHost> {
  @override
  int get typeId => 0;

  @override
  ServerHost read(BinaryReader reader) {
    return ServerHost(
        name: '', host: '', login: '', password: '', isSelected: false)
      ..name = reader.read()
      ..host = reader.read()
      ..login = reader.read()
      ..password = reader.read()
      ..isSelected = reader.read();
  }

  @override
  void write(BinaryWriter writer, ServerHost obj) {
    writer.write(obj.name);
    writer.write(obj.host);
    writer.write(obj.login);
    writer.write(obj.password);
    writer.write(obj.isSelected);
  }
}
