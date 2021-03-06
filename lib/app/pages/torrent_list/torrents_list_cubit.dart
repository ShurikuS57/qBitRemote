import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_page.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';

@immutable
abstract class TorrentListState {}

class TorrentsInitial extends TorrentListState {}

class TorrentsLoading extends TorrentListState {}

class DeleteTorrentsSuccess extends TorrentListState {}

class GoToBackScreen extends TorrentListState {}

class ShowError extends TorrentListState {
  final String error;

  ShowError(this.error);
}

class TorrentsLoaded extends TorrentListState {
  final List<TorrentEntity> torrents;

  TorrentsLoaded(this.torrents);
}

class ShowTorrentInfo extends TorrentListState {
  final TorrentEntity torrent;

  ShowTorrentInfo(this.torrent);
}

class ServerTitle extends TorrentListState {
  final ServerHost host;

  ServerTitle(this.host);
}

class ShowLoader extends TorrentListState {}

class TorrentListCubit extends Cubit<TorrentListState> {
  TorrentListCubit(
      {required this.localRepository, required this.qBitRemoteRepository})
      : super(TorrentsInitial()) {
    loadTorrents();
    loadTitleServer();
    emit(ShowLoader());
  }

  final LocalRepository localRepository;
  final RemoteRepository qBitRemoteRepository;

  Future<void> loadTitleServer() async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer != null) {
      emit(ServerTitle(currentServer));
    }
  }

  Future<void> loadTorrents() async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer != null) {
      UiResponse<List<TorrentEntity>> response =
          await qBitRemoteRepository.getTorrentsInfo(currentServer);
      emit(ServerTitle(currentServer));
      final responseResult = response.results;
      if (response.error.isNotEmpty) {
        return emit(ShowError(response.error));
      } else if (responseResult != null) {
        return emit(TorrentsLoaded(responseResult));
      } else {
        return emit(TorrentsInitial());
      }
    } else {
      return emit(ShowError("No found current server host"));
    }
  }

  Future<void> loadTorrentInfo(String torrentHash) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse<TorrentEntity> response =
        await qBitRemoteRepository.getTorrentInfo(currentServer, torrentHash);
    final responseResult = response.results;
    if (response.error.isNotEmpty) {
      if (response.error.contains("No element")) {
        return emit(GoToBackScreen());
      } else {
        return emit(ShowError(response.error));
      }
    } else if (responseResult != null) {
      return emit(ShowTorrentInfo(responseResult));
    }
  }

  void deleteTorrents(List<TorrentEntity> list, bool isDeleteWithData) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response = await qBitRemoteRepository.deleteTorrent(
        currentServer, list, isDeleteWithData);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(DeleteTorrentsSuccess());
    }
  }

  void deleteTorrentByHash(String hash, bool isDeleteWithData) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response = await qBitRemoteRepository.deleteTorrentByHash(
        currentServer, hash, isDeleteWithData);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(DeleteTorrentsSuccess());
    }
  }

  void downloadCommand(List<TorrentEntity> selectedItems) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response = await qBitRemoteRepository.downloadCommand(
        currentServer, selectedItems);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void pauseCommand(List<TorrentEntity> selectedItems) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response =
        await qBitRemoteRepository.pauseCommand(currentServer, selectedItems);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void downloadCommandByHash(String hash) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response =
        await qBitRemoteRepository.downloadCommandByHash(currentServer, hash);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void pauseCommandByHash(String hash) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response =
        await qBitRemoteRepository.pauseCommandByHash(currentServer, hash);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void changePriority(
      List<TorrentEntity> selectedItems, SelectedPopupMenuType priority) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse? response;
    switch (priority) {
      case SelectedPopupMenuType.QueueUp:
        {
          response = await qBitRemoteRepository.increasePriority(
              currentServer, selectedItems);
          break;
        }
      case SelectedPopupMenuType.QueueDown:
        {
          response = await qBitRemoteRepository.decreasePriority(
              currentServer, selectedItems);
          break;
        }
      case SelectedPopupMenuType.QueueMax:
        {
          response = await qBitRemoteRepository.maxPriority(
              currentServer, selectedItems);
          break;
        }
      case SelectedPopupMenuType.QueueMin:
        {
          response = await qBitRemoteRepository.minPriority(
              currentServer, selectedItems);
          break;
        }
      default:
        {
          break;
        }
    }

    final responseError = response?.error;
    if (responseError != null && responseError.isNotEmpty) {
      return emit(ShowError(responseError));
    }
  }

  Future<void> changePriorityFile(
      String hash, String fileId, int priority) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response = await qBitRemoteRepository.changePriorityFile(
        currentServer, hash, fileId, priority);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  Future<int> getUpdateTimeSettings() async {
    AppPrefs settings = await localRepository.loadAppPrefs();
    return settings.timeoutUpdate;
  }

  Future<ServerHost?> getCurrentServerHost() async {
    return await localRepository.findSelectedServerHost();
  }

  void forceResume(List<String> hashes) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response =
        await qBitRemoteRepository.forceStart(currentServer, hashes);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void forceRecheck(List<String> hashes) async {
    ServerHost? currentServer = await getCurrentServerHost();
    if (currentServer == null) {
      emit(ShowError("Server no selected"));
      return;
    }
    UiResponse response =
        await qBitRemoteRepository.forceRecheck(currentServer, hashes);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }
}
