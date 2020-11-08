import 'dart:async';

import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbittoren_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

@immutable
abstract class ServerListState {}

class ServerListInitial extends ServerListState {}

class ServerListLoaded extends ServerListState {
  ServerListLoaded(this.servers);

  final List<ServerHost> servers;
}

class ShowError extends ServerListState {
  ShowError(this.error);

  final String error;
}

class ServerConnectSuccess extends ServerListState {}

class ServerListCubit extends Cubit<ServerListState> {
  ServerListCubit(
      {@required this.localRepository, @required this.qBittorentRepository})
      : super(ServerListInitial()) {
    loadServerList();

    // TODO Bad idea take data on this. Need move to repository
    Hive.box(HiveRepositoryImpl.KEY_HIVE_HOSTES).listenable().addListener(() {
      loadServerList();
    });
  }

  final LocalRepository localRepository;
  final QBitRemoteRepository qBittorentRepository;

  Future<void> loadServerList() async {
    List<ServerHost> servers = await localRepository.loadServerHostList();
    if (servers.isNotEmpty) {
      return emit(ServerListLoaded(servers));
    } else {
      return emit(ServerListInitial());
    }
  }

  void deleteServer(ServerHost server) async {
    await localRepository.deleteSErverHost(server);
  }

  void connectToServer(ServerHost server) async {
    UiResponse response = await qBittorentRepository.login(server);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      await localRepository.selectedServerHost(server);
      return emit(ServerConnectSuccess());
    }
  }

  void checkSelectedServer() async {
    final serverHost = await localRepository.findSelectedServerHost();
    if (serverHost == null) {
      return emit(ShowError(""));
    } else {
      UiResponse response = await qBittorentRepository.login(serverHost);
      if (response.error.isNotEmpty) {
        return emit(ShowError(response.error));
      } else {
        return emit(ServerConnectSuccess());
      }
    }
  }
}
