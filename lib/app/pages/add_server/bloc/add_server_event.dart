import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/local/models/server_host.dart';

part 'add_server_event.freezed.dart';

@freezed
class AddServerEvent with _$AddServerEvent {
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