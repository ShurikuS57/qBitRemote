import 'package:flutter/material.dart';

class StateHelper {
  static IconData getIconByTorrentState(String state) {
    switch (state) {
      case "pausedDL":
        {
          return Icons.pause_outlined;
        }
      case "error":
        {
          return Icons.error_outline_outlined;
        }
      case "allocating":
        {
          return Icons.error_outline;
        }
      case "uploading":
        {
          return Icons.publish_outlined;
        }
      case "downloading":
        {
          return Icons.play_arrow_outlined;
        }
      case "queuedDL":
        {
          return Icons.schedule_outlined;
        }
      case "moving":
        {
          return Icons.move_to_inbox_outlined;
        }
      case "stalledUP":
        {
          return Icons.update_outlined;
        }
      case "stalledDL":
        {
          return Icons.update_outlined;
        }

      default:
        {
          return Icons.help_outline;
        }
    }
  }

  static String convertPriority(int priority) {
    switch (priority) {
      case 0:
        {
          return "Do not download";
        }
      case 1:
        {
          return "Normal priority";
        }
      case 6:
        {
          return "High priority";
        }
      case 7:
        {
          return "Maximal priority";
        }
      default:
        {
          return "None";
        }
    }
  }
}
