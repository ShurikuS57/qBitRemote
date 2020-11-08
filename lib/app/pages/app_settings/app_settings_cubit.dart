import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbittoren_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qBitRemote/local/models/app_settings.dart';
import 'package:qBitRemote/repo/local_repository.dart';

@immutable
abstract class AppSettingsState {}

class AppSettingsInitial extends AppSettingsState {}

class SetupSettingUI extends AppSettingsState {
  SetupSettingUI({
    this.settings,
  });

  final AppSettings settings;
}

class InvalidateResult extends AppSettingsState {
  InvalidateResult({
    this.isEnable,
  });

  final bool isEnable;
}

class ShowError extends AppSettingsState {
  ShowError(this.error);

  final String error;
}

class SaveSettingsSuccess extends AppSettingsState {}

class AppSettingsCubit extends Cubit<AppSettingsState> {
  AppSettings loadedSettings;

  AppSettingsCubit(
      {@required this.localRepository, @required this.qBittorentRepository})
      : super(AppSettingsInitial()) {
    loadAppSettings();
  }

  final LocalRepository localRepository;
  final QBitRemoteRepository qBittorentRepository;

  void loadAppSettings() async {
    loadedSettings = await localRepository.loadAppSettings();

    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse<AppSettings> response = await qBittorentRepository
        .getTorrentSettings(currentServer, loadedSettings);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(SetupSettingUI(settings: loadedSettings));
    }
  }

  void invalidate(AppSettings settings) {
    return emit(InvalidateResult(
        isEnable: _invalidateTimeout(settings.timeoutUpdate.toString()) ||
            loadedSettings.downloadSpeed != settings.downloadSpeed ||
            loadedSettings.uploadSpeed != settings.uploadSpeed));
  }

  bool _invalidateTimeout(String timeoutUpdate) {
    return (loadedSettings.timeoutUpdate.toString() != timeoutUpdate &&
        timeoutUpdate.isNotEmpty &&
        !timeoutUpdate.startsWith("0"));
  }

  void saveNewSettings(AppSettings settings) async {
    loadedSettings.timeoutUpdate = settings.timeoutUpdate;
    await localRepository.saveAppSettings(loadedSettings);
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response =
        await qBittorentRepository.saveTorrentSettings(currentServer, settings);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(SaveSettingsSuccess());
    }
  }
}
