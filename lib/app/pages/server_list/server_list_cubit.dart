import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';

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

class ServerListCubit extends Cubit<ServerListState> {
  ServerListCubit(
      {required this.localRepository, required this.qBittorentRepository})
      : super(ServerListInitial()) {
    loadServerList();

    // TODO Bad idea take data on this. Need move to repository
    Hive.box(HiveRepositoryImpl.KEY_HIVE_HOSTES).listenable().addListener(() {
      loadServerList();
    });
  }

  final LocalRepository localRepository;
  final RemoteRepository qBittorentRepository;

  Future<void> loadServerList() async {
    List<ServerHost> servers = await localRepository.loadServerHostList();
    if (servers.isNotEmpty) {
      return emit(ServerListLoaded(servers));
    } else {
      return emit(ServerListInitial());
    }
  }

  void deleteServer(ServerHost server) async {
    await localRepository.deleteServerHost(server);
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
    final serverHost = await getCurrentServerHost();
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

  Future<void> checkIsHaveSelectedServer() async {
    final serverHost = await getCurrentServerHost();
    return emit(HaveSelectedServer(serverHost != null));
  }

  Future<ServerHost?> getCurrentServerHost() async {
    return await localRepository.findSelectedServerHost();
  }
}
