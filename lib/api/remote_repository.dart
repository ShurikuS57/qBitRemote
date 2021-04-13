import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:qBitRemote/api/models/file_entity.dart';
import 'package:qBitRemote/api/models/torrent_entity.dart';
import 'package:qBitRemote/app/pages/add_torrent/add_torrent_bloc.dart';
import 'package:qBitRemote/app/utils/path_parser.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/local/models/server_preferences.dart';

import 'http.dart';

abstract class RemoteRepository {
  Future<UiResponse> login(ServerHost serverHost);

  Future<UiResponse<List<TorrentEntity>>> getTorrentsInfo(
      ServerHost serverHost);

  Future<UiResponse<bool>> addTorrentByFile(ServerHost serverHost,
      List<PlatformFile> fileSelectedPath, PrefOptions options);

  Future<UiResponse<bool>> addTorrentByUrl(
      ServerHost serverHost, String urlLink, PrefOptions options);

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

  Future<UiResponse> saveServerPrefs(
      ServerHost currentServer, ServerPreferences prefs);

  Future<UiResponse<ServerPreferences>> getServerPreferences(
      ServerHost currentServer);

  Future<UiResponse> increasePriority(ServerHost currentServer,
      List<TorrentEntity> selectedItems);

  Future<UiResponse> decreasePriority(ServerHost currentServer,
      List<TorrentEntity> selectedItems);

  Future<UiResponse> maxPriority(ServerHost currentServer,
      List<TorrentEntity> selectedItems);

  Future<UiResponse> minPriority(ServerHost currentServer,
      List<TorrentEntity> selectedItems);

  Future<UiResponse> forceStart(ServerHost currentServer, List<String> hashes);

  Future<UiResponse> forceRecheck(ServerHost currentServer,
      List<String> hashes);
}

class RemoteRepositoryImpl extends RemoteRepository {
  final Dio dio;

  RemoteRepositoryImpl({required this.dio});

  @override
  Future<UiResponse> login(ServerHost serverHost) async {
    String url = serverHost.getConnectUrl() + "/api/v2/auth/login";

    try {
      await dio.get(url, queryParameters: {
        "username": serverHost.login,
        "password": serverHost.password
      });
    } catch (e) {
      if (e is DioError &&
          e.response != null &&
          e.response?.statusCode == 403) {
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
          await dio.get(serverHost.getConnectUrl() + "/api/v2/torrents/info");
      List<TorrentEntity> result = (response.data as List)
          .map((e) => TorrentEntity.fromJson(e))
          .toList();
      result.sort((a, b) => a.priority.compareTo(b.priority));
      return UiResponse(result, "");
    } catch (e) {
      if (e is DioError && e.response?.statusCode == 403) {
        UiResponse loginResponse = await login(serverHost);
        return UiResponse([], loginResponse.error);
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
          currentServer.getConnectUrl() + "/api/v2/torrents/info",
          data: data);
      TorrentEntity result = (response.data as List)
          .map((e) => TorrentEntity.fromJson(e))
          .toList()
          .first;
      result.fileTreeData
          .addAll(await getFilesInfo(currentServer, torrentHash));
      return UiResponse(result, "");
    } catch (e) {
      if (e is DioError && e.response?.statusCode == 403) {
        await login(currentServer);
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

      String url = currentServer.getConnectUrl() + "/api/v2/torrents/files";
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
      List<PlatformFile> fileSelectedPath, PrefOptions options) async {
    try {
      String url = serverHost.getConnectUrl() + "/api/v2/torrents/add";
      List<MultipartFile> multipartFiles = [];
      for (var item in fileSelectedPath) {
        String? path = item.path;
        if (path != null) {
          final mp = await MultipartFile.fromFile(path, filename: item.name);
          multipartFiles.add(mp);
        }
      }
      final data = FormData.fromMap({
        "torrents": multipartFiles,
        "savepath": options.savePath,
        "sequentialDownload": options.isSequentialDownload,
        "firstLastPiecePrio": options.isDownloadFirst
      });
      await dio.post(url, data: data);
      return UiResponse(true, "");
    } catch (e) {
      return UiResponse(false, e.toString());
    }
  }

  @override
  Future<UiResponse<bool>> addTorrentByUrl(
      ServerHost serverHost, String urlLink, PrefOptions options) async {
    try {
      String url = serverHost.getConnectUrl() + "/api/v2/torrents/add";
      Map<String, dynamic> params = HashMap();
      params["urls"] = urlLink;
      if (options.savePath.isNotEmpty) {
        params["savepath"] = options.savePath;
      }
      params["sequentialDownload"] = options.isSequentialDownload;
      params["firstLastPiecePrio"] = options.isDownloadFirst;
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
      String url = serverHost.getConnectUrl() + "/api/v2/app/defaultSavePath";
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

      String url = serverHost.getConnectUrl() + "/api/v2/torrents/delete";
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
      String url = serverHost.getConnectUrl() + "/api/v2/torrents/delete";
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

      String url = currentServer.getConnectUrl() + "/api/v2/torrents/resume";
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

      String url = currentServer.getConnectUrl() + "/api/v2/torrents/pause";
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
      String url = currentServer.getConnectUrl() + "/api/v2/torrents/resume";
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
      String url = currentServer.getConnectUrl() + "/api/v2/torrents/pause";
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

  String _prepareHashesFromStrings(List<String> list) {
    String hashes = "";
    for (var i = 0; i < list.length; i++) {
      hashes += list[i];
      if (i < list.length - 1) {
        hashes += "|";
      }
    }
    return hashes;
  }

  @override
  Future<UiResponse<ServerPreferences>> getServerPreferences(
      ServerHost currentServer) async {
    try {
      String url = currentServer.getConnectUrl() + "/api/v2/app/preferences";
      Response response = await dio.get(url);
      Map dataMap = response.data as Map;
      final downloadSpeed = ((dataMap["dl_limit"] ?? 0));
      final uploadSpeed = ((dataMap["up_limit"] ?? 0));
      return UiResponse(
          ServerPreferences(
              downloadSpeed: downloadSpeed, uploadSpeed: uploadSpeed),
          "");
    } catch (e) {
      return UiResponse(null, e.toString());
    }
  }

  @override
  Future<UiResponse> saveServerPrefs(
      ServerHost currentServer, ServerPreferences prefs) async {
    try {
      await Future.wait([
        _saveDownloadSpeedSettings(currentServer, prefs.downloadSpeed),
        _saveUploadSpeedSettings(currentServer, prefs.uploadSpeed)
      ]);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse(null, e.toString());
    }
  }

  @override
  Future<UiResponse> increasePriority(
      ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url =
          currentServer.getConnectUrl() + "/api/v2/torrents/increasePrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> decreasePriority(
      ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url =
          currentServer.getConnectUrl() + "/api/v2/torrents/decreasePrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> maxPriority(
      ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url = currentServer.getConnectUrl() + "/api/v2/torrents/topPrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> minPriority(
      ServerHost currentServer, List<TorrentEntity> selectedItems) async {
    try {
      String hashes = _prepareHashes(selectedItems);

      String url =
          currentServer.getConnectUrl() + "/api/v2/torrents/bottomPrio";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashes;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> forceStart(
      ServerHost currentServer, List<String> hashes) async {
    try {
      String hashesStr = _prepareHashesFromStrings(hashes);
      String url =
          currentServer.getConnectUrl() + "/api/v2/torrents/setForceStart";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashesStr;
      params["value"] = true;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  @override
  Future<UiResponse> forceRecheck(
      ServerHost currentServer, List<String> hashes) async {
    try {
      String hashesStr = _prepareHashesFromStrings(hashes);
      String url = currentServer.getConnectUrl() + "/api/v2/torrents/recheck";
      Map<String, dynamic> params = HashMap();
      params["hashes"] = hashesStr;
      await dio.get(url, queryParameters: params);
      return UiResponse("", "");
    } catch (e) {
      return UiResponse("", e.toString());
    }
  }

  Future<Response> _saveDownloadSpeedSettings(
      ServerHost currentServer, int limit) {
    String url =
        currentServer.getConnectUrl() + "/api/v2/transfer/setDownloadLimit";
    Map<String, dynamic> params = HashMap();
    params["limit"] = limit;
    final data = FormData.fromMap(params);
    return dio.post(url, data: data);
  }

  Future<Response> _saveUploadSpeedSettings(
      ServerHost currentServer, int limit) {
    String url =
        currentServer.getConnectUrl() + "/api/v2/transfer/setUploadLimit";
    Map<String, dynamic> params = HashMap();
    params["limit"] = limit;
    final data = FormData.fromMap(params);
    return dio.post(url, data: data);
  }
}
