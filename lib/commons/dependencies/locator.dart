import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/repo/local_repository.dart';

import '../navigation/navigation_service.dart';

GetIt inject = GetIt.I;

void setupLocator() {
  inject.registerLazySingleton(() => NavigationService());
  inject.registerLazySingleton<Dio>(() => initDioConfig());

  // Repository
  inject.registerLazySingleton<RemoteRepository>(
      () => RemoteRepositoryImpl(dio: inject()));
  inject.registerLazySingleton<LocalRepository>(() => HiveRepositoryImpl());
}
