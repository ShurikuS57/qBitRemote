import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';

part 'app_prefs_state.freezed.dart';

@freezed
class AppPrefsState with _$AppPrefsState {
  const AppPrefsState._();

  const factory AppPrefsState.initial() = InitialLAppPrefsState;

  const factory AppPrefsState.showSettingsData(AppPrefs prefs) =
  ShowSettingsData;
}