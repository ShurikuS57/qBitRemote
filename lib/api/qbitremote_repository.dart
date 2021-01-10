import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:qBitRemote/api/models/file_entity.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/utils/path_parser.dart';
import 'package:qBitRemote/local/models/app_settings.dart';
import 'package:qBitRemote/local/models/server_host.dart';

import 'http.dart';

abstract class QBitRemoteRepository {
  Future<UiResponse> login(ServerHost serverHost);

  Future<UiResponse<List<TorrentEntity>>> getTorrentsInfo(
      ServerHost serverHost);

  Future<UiResponse<bool>> addTorrentByFile(
      ServerHost serverHost, List<PlatformFile> fileSelectedPath, String newSavePath);

  Future<UiResponse<bool>> addTorrentByUrl(
      ServerHost serverHost, String urlLink, String newSavePath);

  Future<String> getDefaultSavePath(ServerHost serverHost);

  Future<UiResponse> deleteTorrent(
      ServerHost serverHost, List<TorrentEntity> list, bool isDeleteWithData);

  Future<UiResponse> downloadCommand(
      ServerHost currentServer, List<TorrentEntity> selectedItems);

  Future<UiResponse> pauseCommand(
      ServerHost currentServer, List<TorrentEntity> selectedItems);

  Future<UiResponse<TorrentEntity>> getTorrentInfo(
      ServerHost currentServer, String torrentHash);

  Future<UiResponse> downloadCommandByHash(
      ServerHost currentServer, String hash);

  Future<UiResponse> pauseCommandByHash(ServerHost currentServer, String hash);

  Future<UiResponse> deleteTorrentByHash(
      ServerHost currentServer, String hash, bool isDeleteWithData);

  Future<UiResponse<AppSettings>> getTorrentSettings(
      ServerHost currentServer, AppSettings loadedSettings);

  Future<UiResponse> saveTorrentSettings(
      ServerHost currentServer, AppSettings settings);

  Future<UiResponse> increasePriority(ServerHost currentServer, List<TorrentEntity> selectedItems);

  Future<UiResponse> decreasePriority(ServerHost currentServer, List<TorrentEntity> selectedItems);

  Future<UiResponse> maxPriority(ServerHost currentServer, List<TorrentEntity> selectedItems);

  Future<UiResponse> minPriority(ServerHost currentServer, List<TorrentEntity> selectedItems);
}

class QBitRemoteRepositoryImpl extends QBitRemoteRepository {
  QBitRemoteRepositoryImpl();

  @override
  Future<UiResponse> login(ServerHost serverHost) async {
    String url = "http://" + serverHost.host + "/api/v2/auth/login";

    try {
      await dio.get(url, queryParameters: {
        "username": serverHost.login,
        "password": serverHost.password
      });
    } catch (e) {
      if (e is DioError && e.response != null && e.response.statusCode == 403) {
        return UiResponse(
            "", "User's IP is banned for too many failed login attempts");
      }
      return UiResponse("", e.toString());
    }

    return UiResponse("", "");
  }

  @override
  Future<UiResponse<List<TorrentEntity>>> getTorrentsInfo(
      ServerHost serverHost) async {
    try {
      Response response =
          await dio.get("http://" + serverHost.host + "/api/v2/torrents/info");
      List<TorrentEntity> result = (response.data as List)
          .map((e) => TorrentEntity.fromJson(e))
          .toList();
      result.sort((a, b) => a.priority.compareTo(b.priority));
      return UiResponse(result, "");
    } catch (e) {
      if (e is DioError && e.response?.statusCode == 403) {
        return await login(serverHost);
      }
      return UiResponse([], e.toString());
    }
  }

  @override
  Future<UiResponse<TorrentEntity>> getTorrentInfo(
      ServerHost currentServer, String torrentHash) async {
    try {
      Map<String, dynamic> params = HashMap();
      params["hashes"] = torrentHash;
      final data = FormData.fromMap(params);

      Response response = await dio.post(
          "http://" + currentServer.host + "/api/v2/torrents/info",
          data: data);
      TorrentEntity result = (response.data as List)
          .map((e) => TorrentEntity.fromJson(e))
          .toList()
          .first;
      result.fileTreeData.addAll(await getFilesInfo(currentServer, torrentHash));
      return UiResponse(result, "");
    } catch (e) {
      if (e is DioError && e.response.statusCode == 403) {
        return await login(currentServer);
      }
      return UiResponse(null, e.toString());
    }
  }

  Future<List<FileTreeNode>> getFilesInfo(
      ServerHost currentServer, String torrentHash) async {
    try {
      Map<String, dynamic> params = HashMap();
      params["hash"] = torrentHash;
      final data = FormData.fromMap(params);

      String url = "http://" + currentServer.host + "/api/v2/torrents/files";
      Response response = await dio.post(url, data: data);
      List<FileEntity> files =
      (response.data as List).map((e) => FileEntity.fromMap(e)).toList();
      final pathParser = PathParser(files);
      List<FileTreeNode> result = pathParser.treeData;
      return result;
    } catch (e) {
      return [];
    }
  }

  @override
  Future<UiResponse<bool>> addTorrentByFile(ServerHost serverHost,
      List<PlatformFile> fileSelectedPath, String newSavePath) async {
    try {
      String url = "http://" + serverHost.host + "/api/v2/torrents/add";
      List<MultipartFile> multipartFiles = List();
      for (var item in fileSelectedPath) {
        final mp = await MultipartFile.fromFile(item.path, filename: item.name);
        multipartFiles.add(mp);
      }
      final data = FormData.fromMap({
        "torrents": multipartFiles
      });
      await dio.post(url, data: data);
      return UiResponse(true, "");
    } catch (e) {
      return UiResponse(false, e.toString());
    }
  }

  @override
  Future<UiResponse<bool>> addTorrentByUrl(
      ServerHost serverHost, String urlLink, String newSavePath) async {
    try {
      String url = "http://" + serverHost.host + "/api/v2/torrents/add";
      Map<String, dynamic> params = HashMap();
      params["urls"] = urlLink;
      if (newSavePath.isNotEmpty) {
        params["savepath"] = newSavePath;
      }
      final data = FormData.fromMap(params);
      await dio.post(url, data: data);
      return UiResponse(true, "");
    } catch (e) {
      return UiResponse(false, e.toString());
    }
  }

  @override
  Future<String> getDefaultSavePath(ServerHost serverHost) async {
    try {
      String url = "http://" + serverHost.host + "/api/v2/app/defaultSavePath";
      final response = await dio.get(url);
      String result = response.data.toString();
      if (result.isNotEmpty) {
        return result;
      } else {
        return "";
      }
    } catch (e) {
      return "";
    }
  }

  @override
  Future<UiResponse> deleteTorrent(ServerHost serverHost,
      List<TorrentEntity> list, bool isDeleteWithData) async {
    try {
      String hashes = _prepareHashes(list);

      String url = "http://" + serverHost.host + "/api/v2/torrents/delete";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      params["deleteFiles"] = isDeleteWithData;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> deleteTorrentByHash(
      ServerHost serverHost, String hash, bool isDeleteWithData) async {
    try {
      String url = "http://" + serverHost.host + "/api/v2/torrents/delete";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hash;
      params["deleteFiles"] = isDeleteWithData;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> downloadCommand(
      ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = "http://" + currentServer.host + "/api/v2/torrents/resume";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> pauseCommand(
      ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = "http://" + currentServer.host + "/api/v2/torrents/pause";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> downloadCommandByHash(
      ServerHost currentServer, String hash) async {
    try {
      String url = "http://" + currentServer.host + "/api/v2/torrents/resume";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hash;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> pauseCommandByHash(
      ServerHost currentServer, String hash) async {
    try {
      String url = "http://" + currentServer.host + "/api/v2/torrents/pause";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hash;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  String _prepareHashes(List<TorrentEntity> list) {
    String hashes = "";
    for (var i = 0; i < list.length; i++) {
      hashes += list[i].hash;
      if (i < list.length - 1) {
        hashes += "|";
      }
    }
    return hashes;
  }

  @override
  Future<UiResponse<AppSettings>> getTorrentSettings(
      ServerHost currentServer, AppSettings loadedSettings) async {
    try {
      String url = "http://" + currentServer.host + "/api/v2/app/preferences";
      Response response = await dio.get(url);
      Map dataMap = response.data as Map;
      loadedSettings.downloadSpeed = ((dataMap["dl_limit"] ?? 0));
      loadedSettings.uploadSpeed = ((dataMap["up_limit"] ?? 0));

      print("");
      return UiResponse(loadedSettings, "");
    } catch (e) {
      return UiResponse(null, e.toString());
    }
  }

  @override
  Future<UiResponse> saveTorrentSettings(
      ServerHost currentServer, AppSettings settings) async {
    try {
      await Future.wait([
        _saveDownloadSpeedSettings(currentServer, settings.downloadSpeed),
        _saveUploadSpeedSettings(currentServer, settings.uploadSpeed)
      ]);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse(null, e.toString());
    }
  }

  @override
  Future<UiResponse> increasePriority(ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = "http://" + currentServer.host + "/api/v2/torrents/increasePrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> decreasePriority(ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = "http://" + currentServer.host + "/api/v2/torrents/decreasePrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> maxPriority(ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = "http://" + currentServer.host + "/api/v2/torrents/topPrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> minPriority(ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = "http://" + currentServer.host + "/api/v2/torrents/bottomPrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  Future<Response> _saveDownloadSpeedSettings(
      ServerHost currentServer, int limit) {
    String url =
        "http://" + currentServer.host + "/api/v2/transfer/setDownloadLimit";
    Map<String, dynamic> params = HashMap();
    params["limit"] = limit;
    final data = FormData.fromMap(params);
    return dio.post(url, data: data);
  }

  Future<Response> _saveUploadSpeedSettings(
      ServerHost currentServer, int limit) {
    String url =
        "http://" + currentServer.host + "/api/v2/transfer/setUploadLimit";
    Map<String, dynamic> params = HashMap();
    params["limit"] = limit;
    final data = FormData.fromMap(params);
    return dio.post(url, data: data);
  }
}