import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/api/qbitremote_repository.dart';
import 'package:qBitRemote/app/pages/torrent_list/torrents_list_page.dart';
import 'package:qBitRemote/local/models/app_settings.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';

@immutable
abstract class TorrentListState {}

class TorrentsInitial extends TorrentListState {}

class TorrentsLoading extends TorrentListState {}

class DeleteTorrentsSuccess extends TorrentListState{}

class GoToBackScreen extends TorrentListState {}

class ShowError extends TorrentListState {
  ShowError(this.error);

  final String error;
}

class TorrentsLoaded extends TorrentListState {
  TorrentsLoaded(this.torrents);

  final List<TorrentEntity> torrents;
}

class ShowTorrentInfo extends TorrentListState {
  ShowTorrentInfo(this.torrent);

  final TorrentEntity torrent;
}

class ServerTitle extends TorrentListState {
  ServerTitle(this.host);

  final ServerHost host;
}

class TorrentListCubit extends Cubit<TorrentListState> {
  TorrentListCubit(
      {@required this.localRepository, @required this.qBitRemoteRepository})
      : super(TorrentsInitial()) {
    loadTorrents();
    loadTitleServer();
  }

  final LocalRepository localRepository;
  final QBitRemoteRepository qBitRemoteRepository;

  Future<void> loadTitleServer() async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    emit(ServerTitle(currentServer));
  }

  Future<void> loadTorrents() async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    if (currentServer != null) {
      UiResponse<List<TorrentEntity>> response =
          await qBitRemoteRepository.getTorrentsInfo(currentServer);

      emit(ServerTitle(currentServer));
      if (response.error.isNotEmpty) {
        return emit(ShowError(response.error));
      } else if (response.results.isNotEmpty) {
        return emit(TorrentsLoaded(response.results));
      } else {
        return emit(TorrentsInitial());
      }
    } else {
      return emit(ShowError("No found current server host"));
    }
  }

  Future<void> loadTorrentInfo(String torrentHash) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse<TorrentEntity> response =
          await qBitRemoteRepository.getTorrentInfo(currentServer, torrentHash);
      if (response.error.isNotEmpty) {
        if (response.error.contains("No element")) {
          return emit(GoToBackScreen());
        } else {
          return emit(ShowError(response.error));
        }
      } else if (response.results != null) {
        return emit(ShowTorrentInfo(response.results));
      }
  }

  void deleteTorrents(List<TorrentEntity> list, bool isDeleteWithData) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBitRemoteRepository.deleteTorrent(currentServer, list, isDeleteWithData);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(DeleteTorrentsSuccess());
    }
  }

  void deleteTorrentByHash(String hash, bool isDeleteWithData) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBitRemoteRepository.deleteTorrentByHash(currentServer, hash, isDeleteWithData);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(DeleteTorrentsSuccess());
    }
  }

  void downloadCommand(List<TorrentEntity> selectedItems) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBitRemoteRepository.downloadCommand(currentServer, selectedItems);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void pauseCommand(List<TorrentEntity> selectedItems) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBitRemoteRepository.pauseCommand(currentServer, selectedItems);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void downloadCommandByHash(String hash) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBitRemoteRepository.downloadCommandByHash(currentServer, hash);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void pauseCommandByHash(String hash) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBitRemoteRepository.pauseCommandByHash(currentServer, hash);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void changePriority(
      List<TorrentEntity> selectedItems, SelectedPopupMenuType priority) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response;
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
    }

    if (response == null || response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  Future<int> getUpdateTimeSettings() async {
    AppSettings settings = await localRepository.loadAppSettings();
    return settings.timeoutUpdate;
  }
}