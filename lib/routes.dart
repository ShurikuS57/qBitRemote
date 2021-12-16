import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/pages/add_server/add_server_page.dart';
import 'package:qBitRemote/app/pages/add_torrent/add_torrent_page.dart';
import 'package:qBitRemote/app/pages/app_settings/app_settings_page.dart';
import 'package:qBitRemote/app/pages/app_settings/host/bloc/host_settings_bloc.dart';
import 'package:qBitRemote/app/pages/app_settings/local/bloc/app_prefs_bloc.dart';
import 'package:qBitRemote/app/pages/app_settings/local/app_prefs_page.dart';
import 'package:qBitRemote/app/pages/server_list/bloc/server_list_bloc.dart';

import 'app/pages/add_server/bloc/add_server_bloc.dart';
import 'app/pages/add_torrent/bloc/add_torrent_bloc.dart';
import 'app/pages/add_torrent/clipboard_bloc/clipboard_bloc.dart';
import 'app/pages/app_settings/host/host_settings_page.dart';
import 'app/pages/server_list/server_list_page.dart';
import 'app/pages/splash/splash_page.dart';
import 'app/pages/torrent_info/torrent_details_page.dart';
import 'app/pages/torrent_list/torrents_list_cubit.dart';
import 'app/pages/torrent_list/torrents_list_page.dart';
import 'app/widgets/multiselect/multi_select_cubit.dart';
import 'commons/dependencies/locator.dart';

class Routes {
  static const String splashPage = "/";
  static const String serverListPage = "/server_list";
  static const String addServerPage = "/add_server";
  static const String torrentsPage = "/torrents";
  static const String addTorrentPage = "/add_torrent";
  static const String torrentInfoPage = "/torrent_info";
  static const String appSettingsPage = "/app_settings";
  static const String localSettingsPage = "/local_settings";
  static const String hostSettingsPage = "/host_settings";

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.splashPage: (BuildContext context) => BlocProvider(
            create: (_) => ServerListBloc(
                localRepository: inject(), qBittorentRepository: inject()),
            child: SplashPage(),
          ),
      Routes.serverListPage: (BuildContext context) => BlocProvider(
            create: (_) => ServerListBloc(
                localRepository: inject(), qBittorentRepository: inject()),
            child: ServerListPage(),
          ),
      Routes.addServerPage: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => AddServerBloc(inject(), inject()),
              ),
            ],
            child: AddServerPage(),
          ),
      Routes.torrentsPage: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => TorrentListCubit(
                    localRepository: inject(), qBitRemoteRepository: inject()),
              ),
              BlocProvider(
                create: (_) => MultiSelectCubit(),
              )
            ],
            child: TorrentListScreen(),
          ),
      Routes.addTorrentPage: (BuildContext context) =>
          MultiBlocProvider(providers: [
            BlocProvider(
              create: (_) => AddTorrentBloc(inject(), inject()),
            ),
            BlocProvider(create: (_) => ClipboardBloc())
          ], child: AddTorrentScreen()),
      Routes.torrentInfoPage: (BuildContext context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => TorrentListCubit(
                    localRepository: inject(), qBitRemoteRepository: inject()),
              ),
              BlocProvider(
                create: (_) => MultiSelectCubit(),
              )
            ],
            child: TorrentDetailsScreen(),
          ),
      Routes.appSettingsPage: (BuildContext context) => AppSettingsScreen(),
      Routes.localSettingsPage: (BuildContext context) => BlocProvider(
            create: (_) => AppPrefsBloc(inject()),
            child: AppPrefsPage(),
          ),
      Routes.hostSettingsPage: (BuildContext context) => BlocProvider(
            create: (_) => HostSettingsBloc(inject(), inject()),
            child: HostSettingPage(),
          )
    };
  }
}
