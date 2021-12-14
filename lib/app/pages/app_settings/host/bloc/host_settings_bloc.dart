import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/local/models/server_preferences.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'host_settings_state.dart';
import 'host_settings_event.dart';

class HostSettingsBloc extends Bloc<HostSettingsEvent, HostSettingsState> {
  final LocalRepository localRepository;
  final RemoteRepository qBittorentRepository;

  HostSettingsBloc(this.localRepository, this.qBittorentRepository)
      : super(const InitialHostSettingsState()) {
    on<LoadSetupEvent>(_loadSetup);
    on<SavePrefEvent>(_savePref);
    add(LoadSetupEvent());
  }

  void _loadSetup(LoadSetupEvent event, Emitter<HostSettingsState> emit) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      ShowErrorState("Server no selected");
      return;
    }
    UiResponse<ServerPreferences> response =
        await qBittorentRepository.getServerPreferences(currentServer);
    if (response.error.isNotEmpty) {
      emit(HostSettingsState.showError(response.error));
    } else {
      final prefs = response.results;
      if (prefs != null) {
        emit(HostSettingsState.showPreferences(prefs));
      }
    }
  }

  void _savePref(SavePrefEvent event, Emitter<HostSettingsState> emit) async {
    final prefs = event.prefs;
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      ShowErrorState("Server no selected");
      return;
    }
    final response =
        await qBittorentRepository.saveServerPrefs(currentServer, prefs);
    if (response.error.isNotEmpty) {
      emit(ShowToastState(response.error));
    }
  }

  Future<ServerHost?> getCurrentServerHost() async {
    return await localRepository.findSelectedServerHost();
  }
}
