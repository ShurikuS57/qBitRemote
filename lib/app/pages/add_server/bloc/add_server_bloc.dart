import 'package:bloc/bloc.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:string_validator/string_validator.dart';

import 'add_server_event.dart';
import 'add_server_state.dart';

class AddServerBloc extends Bloc<AddServerEvent, AddServerState> {
  final LocalRepository _localRepository;
  final RemoteRepository _repo;
  ServerHost? _editServer;

  AddServerBloc(this._repo, this._localRepository)
      : super(const InitialAddServerState()) {
    on<SetEditModeEvent>(_setEditMode);
    on<SaveServerEvent>(_save);
    on<CheckConnectEvent>(_checkConnect);
    on<InvalidateButtonEvent>(_invalidateButton);
    on<SetAppBarTitleEvent>(_setAppBarTitle);
  }

  void _save(
    SaveServerEvent event,
    Emitter<AddServerState> emit,
  ) async {
    final server = event.server;
    if (_editServer != null) {
      _editServer?.name = server.name;
      _editServer?.host = server.host;
      _editServer?.login = server.login;
      _editServer?.password = server.password;
      await _localRepository.saveServerHostList(_editServer!);
      emit(const AddServerState.connectSuccessResult());
    } else {
      await _localRepository.saveServerHostList(server);
      emit(const AddServerState.connectSuccessResult());
    }
  }

  void _setEditMode(
    SetEditModeEvent event,
    Emitter<AddServerState> emit,
  ) async {
    ServerHost? server =
        await _localRepository.findServerHostById(event.editId);
    if (server != null) {
      _editServer = server;
      emit(AddServerState.setupEditMode(server));
    }
  }

  void _checkConnect(
    CheckConnectEvent event,
    Emitter<AddServerState> emit,
  ) async {
    final server = event.server;
    emit(AddServerState.buttonEnable(false));
    UiResponse response = await _repo.login(server);
    emit(AddServerState.testConnectResult(response.error.isEmpty));
    emit(AddServerState.buttonEnable(true));
  }

  void _invalidateButton(
      InvalidateButtonEvent event, Emitter<AddServerState> emit) async {
    final name = event.name;
    final host = event.host;
    final login = event.login;
    final password = event.password;

    final validate = name.isNotEmpty &&
        (isIP(host) || isURL(host)) &&
        login.isNotEmpty &&
        password.isNotEmpty;
    emit(AddServerState.buttonEnable(validate));
  }

  void _setAppBarTitle(
      SetAppBarTitleEvent event, Emitter<AddServerState> emit) async {
    emit(AddServerState.setupAppBarTitle(event.title));
  }
}
