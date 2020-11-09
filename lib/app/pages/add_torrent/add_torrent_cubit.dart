import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbitremote_repository.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:string_validator/string_validator.dart';

@immutable
abstract class AddTorrentState {}

class AddTorrentInitial extends AddTorrentState {}

class OnSwitchInputSource extends AddTorrentState {
  OnSwitchInputSource({this.isFile, this.sendButtonEnable});

  final bool isFile;
  final bool sendButtonEnable;
}

class FileSelected extends AddTorrentState {
  FileSelected(this.pathFile, this.sendButtonEnable);

  final List<PlatformFile> pathFile;
  final bool sendButtonEnable;
}

class ShowError extends AddTorrentState {
  ShowError({this.message});

  final String message;
}

class AddTorrentSuccess extends AddTorrentState {}

class SendButtonEnable extends AddTorrentState {
  SendButtonEnable({this.isEnable});
  final bool isEnable;
}

class ShowDefaultSavePath extends AddTorrentState {
  ShowDefaultSavePath({this.path});
  final String path;
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
  List<PlatformFile> _filesSelectedPath = List();
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
    final currentServerHost = await localRepository.findSelectedServerHost();

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
    final currentServerHost = await localRepository.findSelectedServerHost();
    String path =
        await qBittorentRepository.getDefaultSavePath(currentServerHost);
    emit(ShowDefaultSavePath(path: path));
  }
}