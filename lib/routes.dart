import 'package:cookie_jar/cookie_jar.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/api/qbitremote_repository.dart';
import 'package:qBitRemote/app/pages/add_server/add_server_page.dart';
import 'package:qBitRemote/app/pages/add_torrent/add_torrent_page.dart';
import 'package:qBitRemote/app/pages/app_settings/app_settings_cubit.dart';
import 'package:qBitRemote/app/pages/app_settings/app_settings_page.dart';
import 'package:qBitRemote/app/pages/server_list/server_list_cubit.dart';
import 'package:qBitRemote/repo/local_repository.dart';

import 'app/pages/add_server/add_server_bloc.dart';
import 'app/pages/add_torrent/add_torrent_bloc.dart';
import 'app/pages/server_list/server_list_page.dart';
import 'app/pages/splash/splash_page.dart';
import 'app/pages/torrent_info/torrent_details_page.dart';
import 'app/pages/torrent_list/torrents_list_cubit.dart';
import 'app/pages/torrent_list/torrents_list_page.dart';
import 'app/widgets/multiselect/multi_select_cubit.dart';

class Routes {
  static const String splashPage = "/";
  static const String serverListPage = "/server_list";
  static const String addServerPage = "/add_server";
  static const String torrentsPage = "/torrents";
  static const String addTorrentPage = "/add_torrent";
  static const String torrentInfoPage = "/torrent_info";
  static const String appSettingsPage = "/app_settings";

  static CookieJar cookieJar;
  static LocalRepository _localRepository = HiveRepositoryImpl();
  static QBitRemoteRepository _qBittorentRepository =
      QBitRemoteRepositoryImpl();

  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.splashPage: (BuildContext context) => BlocProvider(
            create: (_) => ServerListCubit(
                localRepository: _localRepository,
                qBittorentRepository: _qBittorentRepository),
            child: SplashPage(),
          ),
      Routes.serverListPage: (BuildContext context) => BlocProvider(
            create: (_) => ServerListCubit(
                localRepository: _localRepository,
                qBittorentRepository: _qBittorentRepository),
            child: ServerListPage(),
          ),
      Routes.addServerPage: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    AddServerBloc(_qBittorentRepository, _localRepository),
              ),
            ],
            child: AddServerPage(),
          ),
      Routes.torrentsPage: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => TorrentListCubit(
                    localRepository: _localRepository,
                    qBitRemoteRepository: _qBittorentRepository),
              ),
              BlocProvider(
                create: (_) => MultiSelectCubit(),
              )
            ],
            child: TorrentListScreen(),
          ),
      Routes.addTorrentPage: (BuildContext context) => BlocProvider(
            create: (_) =>
                AddTorrentBloc(_localRepository, _qBittorentRepository),
            child: AddTorrentScreen(),
          ),
      Routes.torrentInfoPage: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => TorrentListCubit(
                    localRepository: _localRepository,
                    qBitRemoteRepository: _qBittorentRepository),
              ),
              BlocProvider(
                create: (_) => MultiSelectCubit(),
              )
            ],
            child: TorrentDetailsScreen(),
          ),
      Routes.appSettingsPage: (BuildContext context) => BlocProvider(
            create: (_) => AppSettingsCubit(
                localRepository: _localRepository,
                qBittorentRepository: _qBittorentRepository),
            child: AppSettingsScreen(),
          )
    };
  }
}
