import 'package:hive/hive.dart';
import 'package:qBitRemote/local/models/app_settings.dart';
import 'package:qBitRemote/local/models/server_host.dart';

abstract class LocalRepository {
  Future<List<ServerHost>> loadServerHostList();
  Future<void> saveServerHostList(ServerHost serverHost);
  Future<ServerHost> findServerHostById(int id);
  Future<void> deleteServerHost(ServerHost serverHost);
  Future<ServerHost> findSelectedServerHost();
  Future<AppSettings> loadAppSettings();
  Future<void> saveAppSettings(AppSettings settings);
  Future<void> selectedServerHost(ServerHost server);
}

class HiveRepositoryImpl extends LocalRepository {
  static const String KEY_HIVE_HOSTES = "server_host";
  static const String KEY_HIVE_APP_SETTINGS = "APP_SETTINGS";

  @override
  Future<ServerHost> findServerHostById(int id) async {
    var hive = Hive.box(KEY_HIVE_HOSTES);
    return hive.get(id);
  }

  @override
  Future<List<ServerHost>> loadServerHostList() async {
    var hive = Hive.box(KEY_HIVE_HOSTES);
    List<ServerHost> hostList =
        hive?.values?.map((e) => e as ServerHost)?.toList() ??
            [];
    return hostList;
  }

  @override
  Future<void> saveServerHostList(ServerHost serverHost) async {
    var hive = Hive.box(KEY_HIVE_HOSTES);
    if (serverHost.isInBox) {
      serverHost.save();
    } else {
      hive.add(serverHost);
    }
  }

  @override
  Future<void> deleteServerHost(ServerHost serverHost) async {
    serverHost.delete();
  }

  @override
  Future<ServerHost> findSelectedServerHost() async {
    try {
      final selectedServer = await loadServerHostList()
          .then((value) => value.firstWhere((element) => element.isSelected));
      return selectedServer;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<AppSettings> loadAppSettings() async {
    var hive = Hive.box(KEY_HIVE_APP_SETTINGS);
    return hive.get(0, defaultValue: AppSettings(timeoutUpdate: 3));
  }

  @override
  Future<void> saveAppSettings(AppSettings settings) async {
    var hive = Hive.box(KEY_HIVE_APP_SETTINGS);
    if (settings.isInBox) {
      settings.save();
    } else {
      hive.clear();
      hive.add(settings);
    }
  }

  @override
  Future<void> selectedServerHost(ServerHost server) async {
    List<ServerHost> hosts = await loadServerHostList();
    hosts.forEach((item) async {
      item.isSelected = item.key == server.key;
      await saveServerHostList(item);
    });
  }
}
