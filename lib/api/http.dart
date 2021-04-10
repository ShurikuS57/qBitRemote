import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

Dio initDioConfig() {
  Dio dio = Dio(BaseOptions(
    connectTimeout: 10000,
    receiveTimeout: 3000,
  ));
  var cookieJar = CookieJar();
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
  return dio;
}

PersistCookieJar getPersistCookie() {
  return PersistCookieJar(
    ignoreExpires: true,
  );
}

class UiResponse<T> {
  UiResponse(this.results, this.error);

  final T? results;
  final String error;
}
