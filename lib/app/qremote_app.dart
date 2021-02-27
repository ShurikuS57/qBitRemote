import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/navigation/locator.dart';
import 'package:qBitRemote/commons/navigation/navigation_service.dart';

import '../routes.dart';
import 'pages/add_torrent/add_torrent_page.dart';

class QBitRemoteApp extends StatelessWidget {
  static const _methodChannel =
      const MethodChannel('app.channel.shared.method');
  static const _messageChannel = const EventChannel('app.channel.shared.data');
  final NavigationService _navigationService = locator<NavigationService>();

  QBitRemoteApp() {
    _subscribeMessageChannel();
  }

  void _subscribeMessageChannel() async {
    _messageChannel.receiveBroadcastStream().listen((event) {
      if (event != null) {
        bool isFileLink = event["isFileLink"] == 'true';
        String path = event["path"];
        bool isInitLaunch = event["isInitLaunch"] == 'true';
        final arg = AddTorrentArg(isMagnetLink: !isFileLink, uri: path);
        if (isInitLaunch) {
          NavigationService.addTorrentArg = arg;
        } else {
          _navigationService.navigateTo(Routes.addTorrentPage, arguments: arg);
        }
      }
    });
    await _methodChannel.invokeMethod("getSharedData");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splashPage,
      routes: Routes.getRoutes(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: Theme.of(context).copyWith(
          primaryColor: AppColors.primary,
          primaryColorLight: AppColors.primaryLight,
          primaryColorDark: AppColors.primaryDark,
          accentColor: AppColors.primaryAccent,
          appBarTheme: AppBarTheme.of(context)
              .copyWith(color: AppColors.primary, brightness: Brightness.dark)),
      debugShowCheckedModeBanner: false,
    );
  }
}
