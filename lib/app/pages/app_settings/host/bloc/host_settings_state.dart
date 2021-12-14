import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/server_preferences.dart';

part 'host_settings_state.freezed.dart';

@freezed
class HostSettingsState with _$HostSettingsState {
  const HostSettingsState._();

  const factory HostSettingsState.initial() = InitialHostSettingsState;

  const factory HostSettingsState.showError(String msg) = ShowErrorState;

  const factory HostSettingsState.showPreferences(ServerPreferences prefs) =
  ShowPreferencesState;

  const factory HostSettingsState.showToast(String msg) = ShowToastState;
}