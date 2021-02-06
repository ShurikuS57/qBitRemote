import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbitremote_repository.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:string_validator/string_validator.dart';

@immutable
abstract class AddTorrentState {}

class AddTorrentInitial extends AddTorrentState {}

class OnSwitchInputSource extends AddTorrentState {
  final bool isFile;
  final bool sendButtonEnable;

  OnSwitchInputSource({this.isFile, this.sendButtonEnable});
}

class FileSelected extends AddTorrentState {
  final List<PlatformFile> pathFile;
  final bool sendButtonEnable;

  FileSelected(this.pathFile, this.sendButtonEnable);
}

class ShowError extends AddTorrentState {
  final String message;

  ShowError({this.message});
}

class AddTorrentSuccess extends AddTorrentState {}

class SendButtonEnable extends AddTorrentState {
  final bool isEnable;

  SendButtonEnable({this.isEnable});
}

class ShowDefaultSavePath extends AddTorrentState {
  final String path;

  ShowDefaultSavePath({this.path});
}

class AddTorrentCubit extends Cubit<AddTorrentState> {
  AddTorrentCubit(
      {@required this.localRepository, @required this.qBittorentRepository})
      : super(AddTorrentInitial()) {
    checkDownloadFolder();
  }

  final LocalRepository localRepository;
  final QBitRemoteRepository qBittorentRepository;

  bool _isFileSourceSelected = true;
  List<PlatformFile> _filesSelectedPath = [];
  String _urlLink = "";

  void onSwitchInputSource(bool isFileSourceSelected) {
    _isFileSourceSelected = isFileSourceSelected;
    emit(OnSwitchInputSource(
        isFile: isFileSourceSelected, sendButtonEnable: _invalidateButton()));
  }

  void choiceTorrentFile() async {
    final fileResult = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ["torrent"],
        allowMultiple: true);
    if (fileResult != null && fileResult.files.length > 0) {
      _filesSelectedPath.clear();
      fileResult.files.forEach((element) {
        _filesSelectedPath.add(element);
      });
      emit(FileSelected(_filesSelectedPath, _invalidateButton()));
    }
  }

  bool _invalidateButton() {
    if (_isFileSourceSelected && _filesSelectedPath.isNotEmpty) {
      return true;
    } else if (!_isFileSourceSelected && _urlLink.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  void startDownload(String newSavePath) async {
    UiResponse<bool> result = UiResponse(false, "");
    final currentServerHost = await getCurrentServerHost();

    if (_isFileSourceSelected) {
      result = await qBittorentRepository.addTorrentByFile(
          currentServerHost, _filesSelectedPath, newSavePath);
    } else {
      result = await qBittorentRepository.addTorrentByUrl(
          currentServerHost, _urlLink, newSavePath);
    }
    if (result.error.isEmpty) {
      emit(AddTorrentSuccess());
    } else {
      emit(ShowError(message: result.error));
    }
  }

  void onChangeUrl(String newText) {
    _urlLink = newText;
    emit(SendButtonEnable(isEnable: isURL(newText) || isMagnetLink(newText)));
  }

  void checkDownloadFolder() async {
    final currentServerHost = await getCurrentServerHost();
    String path =
        await qBittorentRepository.getDefaultSavePath(currentServerHost);
    emit(ShowDefaultSavePath(path: path));
  }

  Future<ServerHost> getCurrentServerHost() async {
    return await localRepository.findSelectedServerHost();
  }
}
