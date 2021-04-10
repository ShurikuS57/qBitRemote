import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/local/models/server_preferences.dart';
import 'package:qBitRemote/repo/local_repository.dart';

part 'host_settings_bloc.freezed.dart';

@freezed
class HostSettingsEvent with _$HostSettingsEvent {
  const HostSettingsEvent._();

  const factory HostSettingsEvent.loadSetup() = LoadSetupEvent;

  const factory HostSettingsEvent.savePref(ServerPreferences prefs) =
      SavePrefEvent;
}

@freezed
class HostSettingsState with _$HostSettingsState {
  const HostSettingsState._();

  const factory HostSettingsState.initial() = InitialHostSettingsState;

  const factory HostSettingsState.showError(String msg) = ShowErrorState;

  const factory HostSettingsState.showPreferences(ServerPreferences prefs) =
      ShowPreferencesState;

  const factory HostSettingsState.showToast(String msg) = ShowToastState;
}

class HostSettingsBloc extends Bloc<HostSettingsEvent, HostSettingsState> {
  final LocalRepository localRepository;
  final RemoteRepository qBittorentRepository;

  HostSettingsBloc(this.localRepository, this.qBittorentRepository)
      : super(const InitialHostSettingsState()) {
    add(LoadSetupEvent());
  }

  @override
  Stream<HostSettingsState> mapEventToState(HostSettingsEvent event) {
    return event.when(loadSetup: _loadSetup, savePref: _savePref);
  }

  Stream<HostSettingsState> _loadSetup() async* {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      ShowErrorState("Server no selected");
      return;
    }
    UiResponse<ServerPreferences> response =
        await qBittorentRepository.getServerPreferences(currentServer);
    if (response.error.isNotEmpty) {
      yield HostSettingsState.showError(response.error);
    } else {
      final prefs = response.results;
      if (prefs != null) {
        yield HostSettingsState.showPreferences(prefs);
      }
    }
  }

  Stream<HostSettingsState> _savePref(ServerPreferences prefs) async* {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      ShowErrorState("Server no selected");
      return;
    }
    final response =
        await qBittorentRepository.saveServerPrefs(currentServer, prefs);
    if (response.error.isNotEmpty) {
      yield ShowToastState(response.error);
    }
  }

  Future<ServerHost?> getCurrentServerHost() async {
    return await localRepository.findSelectedServerHost();
  }
}
