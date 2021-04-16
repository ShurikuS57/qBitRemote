import 'package:flutter/material.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';

class StateHelper {
  static IconData getIconByTorrentState(String state) {
    switch (state) {
      case "pausedDL":
        {
          return Icons.pause_outlined;
        }
      case "error":
        {
          return Icons.report_problem_outlined;
        }
      case "allocating":
        {
          return Icons.report_problem_outlined;
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
          return Icons.cloud_upload_outlined;
        }
      case "stalledDL":
        {
          return Icons.play_disabled;
        }
      case "forcedDL":
        {
          return Icons.fast_forward_outlined;
        }
      case "checkingDL":
        {
          return Icons.grading_outlined;
        }
      case "pausedUP":
        {
          return Icons.file_download_done;
        }
      default:
        {
          return Icons.help_outline;
        }
    }
  }

  static String convertPriority(BuildContext context, int priority) {
    switch (priority) {
      case 0:
        {
          return context.intl().doNotDownload;
        }
      case 1:
      case 4:
        {
          return context.intl().normal;
        }
      case 6:
        {
          return context.intl().high;
        }
      case 7:
        {
          return context.intl().maximal;
        }
      default:
        {
          return context.intl().none;
        }
    }
  }

  static String statusStr(String state) {
    switch (state) {
      case "error":
        {
          return "Error";
        }
      case "missingFiles":
        {
          return "Files Missing";
        }
      case "uploading":
        {
          return "Seeding";
        }
      case "pausedUP":
        {
          return "Paused / Done";
        }
      case "queuedUP":
        {
          return "Queued For Seeding";
        }
      case "stalledUP":
        {
          return "Available for Seeding";
        }
      case "checkingUP":
        {
          return "Checking Files";
        }
      case "forcedUP":
        {
          return "Force Uploading";
        }
      case "forcedDL":
        {
          return "Force Downloading";
        }
      case "checkingDL":
        {
          return "Checking Files";
        }
      case "allocating":
        {
          return "Allocating Space";
        }
      case "downloading":
        {
          return "Downloading";
        }
      case "metaDL":
        {
          return "Fetching Metadata";
        }
      case "pausedDL":
        {
          return "Paused";
        }
      case "queuedDL":
        {
          return "Queued for Download";
        }
      case "stalledDL":
        {
          return "Stalled";
        }
      case "checkingDL":
        {
          return "Checking Files";
        }
      case "forceDL":
        {
          return "Force Downloading";
        }
      case "checkingResumeData":
        {
          return "Checking Resume";
        }
      case "moving":
        {
          return "Moving Location";
        }
      default:
        {
          return state;
        }
    }
  }
}
