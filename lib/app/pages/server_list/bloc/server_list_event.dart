import 'package:flutter/material.dart';
import 'package:qBitRemote/local/models/server_host.dart';

@immutable
abstract class ServerListEvent {}

class LoadServerListEvent extends ServerListEvent {}

class DeleteServerEvent extends ServerListEvent {
  final ServerHost server;
  DeleteServerEvent(this.server);
}

class ConnectToServerEvent extends ServerListEvent {
  final ServerHost server;
  ConnectToServerEvent(this.server);
}

class CheckSelectedServerEvent extends ServerListEvent {}

class CheckIsHaveSelectedServer extends ServerListEvent {}