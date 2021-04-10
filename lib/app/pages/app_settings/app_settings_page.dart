import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info/package_info.dart';
import 'package:qBitRemote/app/utils/url_launcher.dart';
import 'package:qBitRemote/app/widgets/MaterialDialog.dart';
import 'package:qBitRemote/app/widgets/action_button.dart';
import 'package:qBitRemote/commons/colors.dart';

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
          title: Text(AppLocalizations.of(context)?.settings ?? ""),
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
        backgroundColor: AppColors.primaryBackground,
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            buildActionButton(context),
            SizedBox(
              height: 16,
            ),
            ListTile(
              title: Text("Local"),
              onTap: () =>
                  Navigator.pushNamed(context, Routes.localSettingsPage),
            ),
            ListTile(
              title: Text("Host"),
              onTap: () =>
                  Navigator.pushNamed(context, Routes.hostSettingsPage),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ));
  }

  ActionButton buildActionButton(BuildContext context) {
    return ActionButton(
      text: AppLocalizations.of(context)?.serverList ?? "",
      isTextUpperCase: true,
      iconData: Icons.list_outlined,
      onPressed: () {
        Navigator.pushNamed(context, Routes.serverListPage);
      },
    );
  }

  Future<void> _showAboutDialog(BuildContext context) async {
    String bodyText = await _prepareAboutBodyText();
    MaterialDialog(context)
      ..title = "About qBitRemote"
      ..body = bodyText
      ..positiveButtonText = AppLocalizations.of(context)?.ok ?? ""
      ..show();
  }

  Future<String> _prepareAboutBodyText() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return "A qBittorrent remote client for Android\n\nVersion: " +
        packageInfo.version;
  }
}
