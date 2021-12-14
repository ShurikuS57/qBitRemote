import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'app_prefs_events.dart';
import 'app_prefs_state.dart';

class AppPrefsBloc extends Bloc<AppPrefsEvent, AppPrefsState> {
  final LocalRepository _localRepository;

  AppPrefsBloc(this._localRepository) : super(const InitialLAppPrefsState()) {
    on<LoadSetupEvent>(_loadSetup);
    on<SaveAppPrefEvent>(_saveAppPref);
    add(LoadSetupEvent());
  }

  void _loadSetup(
      LoadSetupEvent event, Emitter<AppPrefsState> emit
      ) async {
    AppPrefs prefs = await _localRepository.loadAppPrefs();
    emit(ShowSettingsData(prefs));
  }

  void _saveAppPref(SaveAppPrefEvent event, Emitter<AppPrefsState> emit) async {
    final prefs = event.prefs;
    if (prefs.timeoutUpdate > 0) {
      _localRepository.saveAppSettings(prefs);
    }
  }
}
