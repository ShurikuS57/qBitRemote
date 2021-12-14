import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'server_list_event.dart';
import 'server_list_state.dart';

class ServerListBloc extends Bloc<ServerListEvent, ServerListState> {
  final LocalRepository localRepository;
  final RemoteRepository qBittorentRepository;

  ServerListBloc(
      {required this.localRepository, required this.qBittorentRepository})
      : super(ServerListInitial()) {

    on<LoadServerListEvent>(_loadServerList);
    on<DeleteServerEvent>(_deleteServer);
    on<ConnectToServerEvent>(_connectToServer);
    on<CheckSelectedServerEvent>(_checkSelectedServer);
    on<CheckIsHaveSelectedServer>(_checkIsHaveSelectedServer);

    add(LoadServerListEvent());
    Hive.box(HiveRepositoryImpl.KEY_HIVE_HOSTES).listenable().addListener(() {
      add(LoadServerListEvent());
    });
  }

  void _loadServerList(
    LoadServerListEvent _,
    Emitter<ServerListState> emit,
  ) async {
    List<ServerHost> servers = await localRepository.loadServerHostList();
    if (servers.isNotEmpty) {
      emit(ServerListLoaded(servers));
    } else {
      emit(ServerListInitial());
    }
  }

  void _deleteServer(
    DeleteServerEvent event,
    Emitter<ServerListState> emit,
  ) async {
    final server = event.server;
    await localRepository.deleteServerHost(server);
  }

  void _connectToServer(
    ConnectToServerEvent event,
    Emitter<ServerListState> emit,
  ) async {
    final server = event.server;
    UiResponse response = await qBittorentRepository.login(server);
    if (response.error.isNotEmpty) {
      emit(ShowError(response.error));
    } else {
      await localRepository.selectedServerHost(server);
      emit(ServerConnectSuccess());
    }
  }

  void _checkSelectedServer(
      CheckSelectedServerEvent _, Emitter<ServerListState> emit) async {
    final serverHost = await _getCurrentServerHost();
    if (serverHost == null) {
      emit(ShowError(""));
    } else {
      UiResponse response = await qBittorentRepository.login(serverHost);
      if (response.error.isNotEmpty) {
        emit(ShowError(response.error));
      } else {
        emit(ServerConnectSuccess());
      }
    }
  }

  void _checkIsHaveSelectedServer(
    CheckIsHaveSelectedServer _,
    Emitter<ServerListState> emit,
  ) async {
    final serverHost = await _getCurrentServerHost();
    emit(HaveSelectedServer(serverHost != null));
  }

  Future<ServerHost?> _getCurrentServerHost() async {
    return await localRepository.findSelectedServerHost();
  }
}
