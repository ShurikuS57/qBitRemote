import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbittoren_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:string_validator/string_validator.dart';

abstract class AddServerState {}

class AddServerInitial extends AddServerState {}

class AddServerSuccessful extends AddServerState {}

class AddServerSetupEditMode extends AddServerState {
  AddServerSetupEditMode(this.server);

  final ServerHost server;
}

class ButtonInvalidate extends AddServerState {
  ButtonInvalidate(this.isEnableButton);

  bool isEnableButton;
}

class TestConnectResult extends AddServerState {
  TestConnectResult(this.isHaveConnect);

  final bool isHaveConnect;
}

class AddServerCubit extends Cubit<AddServerState> {
  AddServerCubit(this._qBittorentRepository, this._localRepository)
      : super(AddServerInitial());

  final LocalRepository _localRepository;
  final QBitRemoteRepository _qBittorentRepository;

  ServerHost _editServer;

  Future<void> saveServer(ServerHost serverHost) async {
    if (_editServer != null) {
      _editServer.name = serverHost.name;
      _editServer.host = serverHost.host;
      _editServer.login = serverHost.login;
      _editServer.password = serverHost.password;
      await _localRepository.saveServerHostList(_editServer);
      return emit(AddServerSuccessful());
    } else {
      await _localRepository.saveServerHostList(serverHost);
      return emit(AddServerSuccessful());
    }
  }

  Future<void> invalidateButton(
      String name, String host, String login, String password) async {
    final validate = name.isNotEmpty && isIP(host) ||
        isURL(host) && login.isNotEmpty && password.isNotEmpty;
    return emit(ButtonInvalidate(validate));
  }

  Future<void> setupEditMode(int editId) async {
    ServerHost server = await _localRepository.findServerHostById(editId);
    if (server != null) {
      _editServer = server;
      return emit(AddServerSetupEditMode(server));
    }
  }

  Future<void> checkServerConnect(ServerHost serverHost) async {
    UiResponse response = await _qBittorentRepository.login(serverHost);
    return emit(TestConnectResult(response.error.isEmpty));
  }
}
