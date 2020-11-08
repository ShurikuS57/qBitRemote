import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/models/torrent_enity.dart';
import 'package:qBitRemote/api/qbittoren_repository.dart';
import 'package:qBitRemote/local/models/app_settings.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

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

class TorrentListCubit extends Cubit<TorrentListState> {
  TorrentListCubit(
      {@required this.localRepository, @required this.qBittorentRepository})
      : super(TorrentsInitial()) {
    loadTorrents();
  }

  final LocalRepository localRepository;
  final QBitRemoteRepository qBittorentRepository;

  Future<void> loadTorrents() async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    if (currentServer != null) {
      UiResponse<List<TorrentEntity>> response =
          await qBittorentRepository.getTorrentsInfo(currentServer);

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
          await qBittorentRepository.getTorrentInfo(currentServer, torrentHash);
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
    UiResponse response = await qBittorentRepository.deleteTorrent(currentServer, list, isDeleteWithData);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(DeleteTorrentsSuccess());
    }
  }

  void deleteTorrentByHash(String hash, bool isDeleteWithData) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBittorentRepository.deleteTorrentByHash(currentServer, hash, isDeleteWithData);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    } else {
      return emit(DeleteTorrentsSuccess());
    }
  }

  void downloadCommand(List<TorrentEntity> selectedItems) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBittorentRepository.downloadCommand(currentServer, selectedItems);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void pauseCommand(List<TorrentEntity> selectedItems) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBittorentRepository.pauseCommand(currentServer, selectedItems);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void downloadCommandByHash(String hash) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBittorentRepository.downloadCommandByHash(currentServer, hash);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  void pauseCommandByHash(String hash) async {
    ServerHost currentServer = await localRepository.findSelectedServerHost();
    UiResponse response = await qBittorentRepository.pauseCommandByHash(currentServer, hash);
    if (response.error.isNotEmpty) {
      return emit(ShowError(response.error));
    }
  }

  Future<int> getUpdateTimeSettings() async {
    AppSettings settings = await localRepository.loadAppSettings();
    return settings.timeoutUpdate;
  }
}
