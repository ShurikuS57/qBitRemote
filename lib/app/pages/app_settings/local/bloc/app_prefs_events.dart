
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';

part 'app_prefs_events.freezed.dart';

@freezed
class AppPrefsEvent with _$AppPrefsEvent {
  const AppPrefsEvent._();

  const factory AppPrefsEvent.loadSetup() = LoadSetupEvent;

  const factory AppPrefsEvent.saveAppPref(AppPrefs prefs) = SaveAppPrefEvent;
}