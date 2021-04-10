import 'package:flutter/material.dart';
import 'package:qBitRemote/app/pages/add_torrent/add_torrent_page.dart';

class NavigationService {
  static AddTorrentArg? addTorrentArg;

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<void> navigateTo(String routeName, {Object? arguments}) async {
    navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }
}
