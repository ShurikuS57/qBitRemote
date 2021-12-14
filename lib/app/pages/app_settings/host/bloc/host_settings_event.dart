import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/server_preferences.dart';

part 'host_settings_event.freezed.dart';

@freezed
class HostSettingsEvent with _$HostSettingsEvent {
  const HostSettingsEvent._();

  const factory HostSettingsEvent.loadSetup() = LoadSetupEvent;

  const factory HostSettingsEvent.savePref(ServerPreferences prefs) =
  SavePrefEvent;
}