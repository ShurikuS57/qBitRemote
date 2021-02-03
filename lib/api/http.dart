import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:path_provider/path_provider.dart';

Dio dio;

Future initConfig() async {
  dio = Dio(BaseOptions(
    connectTimeout: 10000,
    receiveTimeout: 3000,
  ));
  var cookieJar = await getPersistCookie();
  dio.interceptors.add(CookieManager(cookieJar));

  // TODO Add support to other platform
  if (Platform.isAndroid) {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
}

Future getPersistCookie() async {
  Directory appDocDir = await getApplicationSupportDirectory();
  String appDocPath = appDocDir.path;

  return PersistCookieJar(
    dir: appDocPath,
    ignoreExpires: true,
  );
}

class UiResponse<T> {
  UiResponse(this.results, this.error);

  final T results;
  final String error;
}
