import 'package:qBitRemote/app/qremote_app.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'api/http.dart';
import 'local/models/app_settings.dart';
import 'repo/local_repository.dart';

Future<void> main() async {
  await _initHive();
  await initConfig();
  runApp(QBitRemoteApp());
}

Future<void> _initHive() async {
  Hive.registerAdapter(ServerHostAdapter());
  Hive.registerAdapter(AppSettingsAdapter());
  await Hive.initFlutter();
  await Hive.openBox(HiveRepositoryImpl.KEY_HIVE_HOSTES);
  await Hive.openBox(HiveRepositoryImpl.KEY_HIVE_APP_SETTINGS);
}