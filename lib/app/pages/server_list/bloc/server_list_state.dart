import 'package:flutter/material.dart';
import 'package:qBitRemote/local/models/server_host.dart';

@immutable
abstract class ServerListState {}

class ServerListInitial extends ServerListState {}

class ServerListLoaded extends ServerListState {
  final List<ServerHost> servers;

  ServerListLoaded(this.servers);
}

class ShowError extends ServerListState {
  final String error;

  ShowError(this.error);
}

class ServerConnectSuccess extends ServerListState {}

class HaveSelectedServer extends ServerListState {
  final bool isHave;

  HaveSelectedServer(this.isHave);
}