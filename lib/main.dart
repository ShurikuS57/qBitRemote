import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qBitRemote/app/qremote_app.dart';
import 'package:qBitRemote/commons/app_bloc_observer.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';
import 'package:qBitRemote/local/models/server_host.dart';

import 'commons/dependencies/locator.dart';
import 'repo/local_repository.dart';

Future<void> main() async {
  await _initHive();
  setupLocator();
  BlocOverrides.runZoned(() => runApp(QBitRemoteApp()),
      blocObserver: AppBlocObserver());
}

Future<void> _initHive() async {
  Hive.registerAdapter(ServerHostAdapter());
  Hive.registerAdapter(AppPrefsAdapter());
  await Hive.initFlutter();
  await Hive.openBox(HiveRepositoryImpl.KEY_HIVE_HOSTES);
  await Hive.openBox(HiveRepositoryImpl.KEY_HIVE_APP_PREFS);
}
