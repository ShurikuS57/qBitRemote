import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:qBitRemote/app/utils/url_launcher.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/commons/colors.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';

import '../../../routes.dart';

class AppSettingsScreen extends StatefulWidget {
  @override
  _AppSettingsScreenState createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(context.intl().settings),
          actions: [
            IconButton(
              icon: Icon(Icons.bug_report_outlined),
              onPressed: () {
                UrlLauncher.launchBugReport();
              },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                _showAboutDialog(context);
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            _buildServerListButton(
                context, Icons.list_outlined, context.intl().serverList, () {
              Navigator.pushNamed(context, Routes.serverListPage);
            }),
            Divider(
              height: 1,
            ),
            _buildServerListButton(context, Icons.phonelink_setup_outlined,
                context.intl().appPrefs, () {
              Navigator.pushNamed(context, Routes.localSettingsPage);
            }),
            Divider(
              height: 1,
            ),
            _buildServerListButton(
                context, Icons.router_outlined, context.intl().serverPrefs, () {
              Navigator.pushNamed(context, Routes.hostSettingsPage);
            }),
            Divider(
              height: 1,
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ));
  }

  InkWell _buildServerListButton(BuildContext context, IconData icon,
      String text, GestureTapCallback onTap) {
    return InkWell(
      onTap: () {
        onTap.call();
      },
      child: ListTile(
          title: Text(
            text,
            style: Theme.of(context).textTheme.button,
          ),
          leading: Icon(
            icon,
            color: AppColors.primaryAccent,
            size: 32,
          )),
    );
  }

  Future<void> _showAboutDialog(BuildContext context) async {
    String bodyText = await _prepareAboutBodyText();
    MaterialDialog(context)
      ..title = "About qBitRemote"
      ..body = bodyText
      ..positiveButtonText = context.intl().ok
      ..show();
  }

  Future<String> _prepareAboutBodyText() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return "A qBittorrent remote client for Android\n\nVersion: " +
        packageInfo.version;
  }
}
