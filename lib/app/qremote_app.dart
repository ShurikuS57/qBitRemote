import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/commons/colors.dart';

import '../routes.dart';

class QBitRemoteApp extends StatefulWidget {
  @override
  _QBitRemoteAppState createState() => _QBitRemoteAppState();
}

class _QBitRemoteAppState extends State<QBitRemoteApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.primary,
      statusBarBrightness: Brightness.light
    ));
    return MaterialApp(
      initialRoute: Routes.splashPage,
      routes: Routes.getRoutes(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
          primaryColor: AppColors.primary,
          primaryColorLight: AppColors.primaryLight,
          primaryColorDark: AppColors.primaryDark,
          accentColor: AppColors.primaryAccent,
          appBarTheme: AppBarTheme(color: AppColors.primary)),
      debugShowCheckedModeBanner: false,
    );
  }
}
