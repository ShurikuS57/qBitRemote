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

  static String statusStr(String state) {
    switch(state) {
      case "error": {
        return "Error";
      }
      case "missingFiles": {
        return "Files Missing";
      }
      case "uploading": {
        return "Seeding";
      }
      case "pausedUP": {
        return "Paused / Done";
      }
      case "queuedUP": {
        return "Queued For Seeding";
      }
      case "stalledUP": {
        return "Available for Seeding";
      }
      case "checkingUP": {
        return "Checking Files";
      }
      case "forcedUP": {
        return "Force Uploading";
      }
      case "allocating": {
        return "Allocating Space";
      }
      case "downloading": {
        return "Downloading";
      }
      case "metaDL": {
        return "Fetching Metadata";
      }
      case "pausedDL": {
        return "Paused";
      }
      case "queuedDL": {
        return "Queued for Download";
      }
      case "stalledDL": {
        return "Stalled";
      }
      case "checkingDL": {
        return "Checking Files";
      }
      case "forceDL": {
        return "Force Downloading";
      }
      case "checkingResumeData": {
        return "Checking Resume";
      }
      case "moving": {
        return "Moving Location";
      }
      default: {
        return "Unknown";
      }
    }
  }
}
