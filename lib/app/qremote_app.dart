import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/commons/dependencies/locator.dart';
import 'package:qBitRemote/commons/navigation/navigation_service.dart';

import '../routes.dart';
import 'pages/add_torrent/add_torrent_page.dart';
import 'theme/app_themes.dart';
import 'theme/switch_cubit.dart';

class QBitRemoteApp extends StatelessWidget {
  static const _methodChannel =
      const MethodChannel('app.channel.shared.method');
  static const _messageChannel = const EventChannel('app.channel.shared.data');
  final NavigationService _navigationService = inject<NavigationService>();

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
    return BlocProvider<SwitchThemeCubit>(
      create: (_) => SwitchThemeCubit(),
      child: BlocBuilder<SwitchThemeCubit, SwitchThemeState>(
        builder: (_, state){
          return MaterialApp(
            initialRoute: Routes.splashPage,
            routes: Routes.getRoutes(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            navigatorKey: inject<NavigationService>().navigatorKey,
            theme: AppThemes.lightTheme(context),
            darkTheme: AppThemes.darkTheme(context),
            themeMode: state.themeMode,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
