import 'dart:math';

class FormatHelper {
  static String formatBytes(int bytes, [int decimals = 2]) {
    if (bytes == 0) return "0 Bytes";

    final k = 1024;
    final dm = decimals < 0 ? 0 : decimals;
    final sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];

    final i = (log(bytes) / log(k)).round();

    return (bytes / pow(k, i)).toStringAsFixed(dm) + ' ' + sizes[i];
  }

  static String formatSeconds(int seconds) {
    if (seconds == 0) return "0 s";
    if (seconds >= 8640000) return "∞";

    int hours = seconds / 60 ~/ 60;
    int minute = seconds ~/ 60;
    int second = seconds % 60;

    var result = "";
    if (hours > 0) {
      result += hours.toString() + "h ";
    }

    if (minute > 0 || hours > 0) {
      if (hours > 0) {
        result += (minute - (hours * 60)).toInt().toString() + "m";
      } else {
        result += minute.toString() + "m";
      }
    }

    if (hours <= 0 && minute <= 0) {
      result += second.toString() + "s";
    }
    return result;
  }
}
