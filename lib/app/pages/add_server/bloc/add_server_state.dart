import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/server_host.dart';

part 'add_server_state.freezed.dart';

@freezed
class AddServerState with _$AddServerState {
  const AddServerState._();

  const factory AddServerState.initial() = InitialAddServerState;

  const factory AddServerState.setupEditMode(ServerHost server) =
  SetupEditModeState;

  const factory AddServerState.buttonEnable(bool isEnable) = ButtoinEnableState;

  const factory AddServerState.connectSuccessResult() =
  ConnectSuccessResultState;

  const factory AddServerState.testConnectResult(bool isConnect) =
  TestConnectState;
  const factory AddServerState.setupAppBarTitle(String title) = AppBarTitleState;
}