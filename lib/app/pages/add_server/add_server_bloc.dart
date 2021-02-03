import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbitremote_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:string_validator/string_validator.dart';

part 'add_server_bloc.freezed.dart';

@freezed
abstract class AddServerEvent with _$AddServerEvent {
  const AddServerEvent._();

  const factory AddServerEvent.save(ServerHost server) = SaveServerEvent;

  const factory AddServerEvent.invalidateButton(
          String name, String host, String login, String password) =
      InvalidateButtonEvent;

  const factory AddServerEvent.setEditMode(int editId) = SetEditModeEvent;

  const factory AddServerEvent.checkConnect(ServerHost server) =
      CheckConnectEvent;
  const factory AddServerEvent.setAppBarTitle(String title) = SetAppBarTitleEvent;
}

@freezed
abstract class AddServerState with _$AddServerState {
  const AddServerState._();

  const factory AddServerState.initial() = InitialAddServerState;

  const factory AddServerState.setupEditMode(ServerHost server) =
      SetupEditModeState;

  const factory AddServerState.buttonEnable(bool isEnable) =
      ButtoinEnableState;

  const factory AddServerState.connectSuccessResult() =
      ConnectSuccessResultState;

  const factory AddServerState.testConnectResult(bool isConnect) =
      TestConnectState;
  const factory AddServerState.setupAppBarTitle(String title) = AppBarTitleState;
}

class AddServerBloc extends Bloc<AddServerEvent, AddServerState> {
  final LocalRepository _localRepository;
  final QBitRemoteRepository _repo;
  ServerHost _editServer;

  AddServerBloc(this._repo, this._localRepository)
      : super(const InitialAddServerState());

  @override
  Stream<AddServerState> mapEventToState(AddServerEvent event) {
    return event.when<Stream<AddServerState>>(
      setEditMode: _setEditMode,
      save: _save,
      checkConnect: _checkConnect,
      invalidateButton: _invalidateButton,
      setAppBarTitle: _setAppBarTitle,
    );
  }

  Stream<AddServerState> _save(ServerHost server) async* {
    if (_editServer != null) {
      _editServer.name = server.name;
      _editServer.host = server.host;
      _editServer.login = server.login;
      _editServer.password = server.password;
      await _localRepository.saveServerHostList(_editServer);
      yield const AddServerState.connectSuccessResult();
    } else {
      await _localRepository.saveServerHostList(server);
      yield const AddServerState.connectSuccessResult();
    }
  }

  Stream<AddServerState> _setEditMode(int editId) async* {
    ServerHost server = await _localRepository.findServerHostById(editId);
    if (server != null) {
      _editServer = server;
      yield AddServerState.setupEditMode(server);
    }
  }

  Stream<AddServerState> _checkConnect(ServerHost server) async* {
    yield AddServerState.buttonEnable(false);
    UiResponse response = await _repo.login(server);
    yield AddServerState.testConnectResult(response.error.isEmpty);
    yield AddServerState.buttonEnable(true);
  }

  Stream<AddServerState> _invalidateButton(
      String name, String host, String login, String password) async* {
    final validate = name.isNotEmpty &&
        (isIP(host) || isURL(host)) &&
        login.isNotEmpty &&
        password.isNotEmpty;
    yield AddServerState.buttonEnable(validate);
  }

  Stream<AddServerState> _setAppBarTitle(String title) async* {
    yield AddServerState.setupAppBarTitle(title);
  }
}
