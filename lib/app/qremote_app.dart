import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/navigation/locator.dart';
import 'package:qBitRemote/commons/navigation/navigation_service.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../routes.dart';
import 'pages/add_torrent/add_torrent_page.dart';

class QBitRemoteApp extends StatefulWidget {
  @override
  _QBitRemoteAppState createState() => _QBitRemoteAppState();
}

class _QBitRemoteAppState extends State<QBitRemoteApp> {
  final NavigationService _navigationService = locator<NavigationService>();
  StreamSubscription _intentDataStreamSubscription;

  @override
  void initState() {
    super.initState();
    // For sharing or opening urls/text coming from outside the app while the app is in the memory
    _intentDataStreamSubscription =
        ReceiveSharingIntent.getTextStream().listen((String value) {
      _catchTorrent(value, true);
    });
    // For sharing or opening urls/text coming from outside the app while the app is closed
    ReceiveSharingIntent.getInitialText().then((String value) {
      _catchTorrent(value, false);
    });
  }

  @override
  void dispose() {
    _intentDataStreamSubscription.cancel();
    super.dispose();
  }

  Future<void> _catchTorrent(String path, bool isAppRun) async {
    if (path == null) {
      return;
    } else if (isMagnetLink(path)) {
      if (!isAppRun) {
        NavigationService.addTorrentArg = AddTorrentArg(isMagnetLink: true, uri: path);
      } else {
        _navigationService.navigateTo(Routes.addTorrentPage,
            arguments: AddTorrentArg(isMagnetLink: true, uri: path));
      }
    } else {
      String uriToShare = path.replaceFirst("content://", "file://");
      String filePath = await FlutterAbsolutePath.getAbsolutePath(uriToShare);
      Uri uri = Uri.file(filePath);
      if (!uri.hasEmptyPath) {
        if (!isAppRun) {
          NavigationService.addTorrentArg =
              AddTorrentArg(isMagnetLink: false, uri: filePath);
        } else {
          _navigationService.navigateTo(Routes.addTorrentPage,
              arguments: AddTorrentArg(isMagnetLink: false, uri: filePath));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print("start MaterialApp");
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
