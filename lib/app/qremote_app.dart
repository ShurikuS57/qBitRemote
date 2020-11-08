import 'package:qBitRemote/commons/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QBitRemoteApp extends StatefulWidget {
  @override
  _QBitRemoteAppState createState() => _QBitRemoteAppState();
}

class _QBitRemoteAppState extends State<QBitRemoteApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.primary, //or set color with: Color(0xFF0000FF)
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
