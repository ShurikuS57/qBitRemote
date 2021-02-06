import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static String _bugReportUrl =
      "https://github.com/ShurikuS57/qBitRemote/issues";

  static void launchBugReport() {
    launchUrl(_bugReportUrl);
  }

  static void launchUrl(String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }
}
