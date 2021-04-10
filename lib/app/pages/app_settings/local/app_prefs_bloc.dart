import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';
import 'package:qBitRemote/repo/local_repository.dart';

part 'app_prefs_bloc.freezed.dart';

@freezed
class AppPrefsEvent with _$AppPrefsEvent {
  const AppPrefsEvent._();

  const factory AppPrefsEvent.loadSetup() = LoadSetupEvent;

  const factory AppPrefsEvent.saveAppPref(AppPrefs prefs) = SaveAppPrefEvent;
}

@freezed
class AppPrefsState with _$AppPrefsState {
  const AppPrefsState._();

  const factory AppPrefsState.initial() = InitialLAppPrefsState;

  const factory AppPrefsState.showSettingsData(AppPrefs prefs) =
      ShowSettingsData;
}

class AppPrefsBloc extends Bloc<AppPrefsEvent, AppPrefsState> {
  final LocalRepository _localRepository;

  AppPrefsBloc(this._localRepository) : super(const InitialLAppPrefsState()) {
    add(LoadSetupEvent());
  }

  @override
  Stream<AppPrefsState> mapEventToState(AppPrefsEvent event) {
    return event.when(loadSetup: _loadSetup, saveAppPref: _saveAppPref);
  }

  Stream<AppPrefsState> _loadSetup() async* {
    AppPrefs prefs = await _localRepository.loadAppPrefs();
    yield ShowSettingsData(prefs);
  }

  Stream<AppPrefsState> _saveAppPref(AppPrefs prefs) async* {
    if (prefs.timeoutUpdate > 0) {
      _localRepository.saveAppSettings(prefs);
    }
  }
}
