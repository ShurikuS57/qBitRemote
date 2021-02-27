import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/qbitremote_repository.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:string_validator/string_validator.dart';

import 'add_torrent_page.dart';

part 'add_torrent_bloc.freezed.dart';

@freezed
abstract class AddTorrentEvent with _$AddTorrentEvent {
  const AddTorrentEvent._();

  const factory AddTorrentEvent.onSwitchInputSource(bool isFileSourceSelected) =
      SwitchInputSourceEvent;

  const factory AddTorrentEvent.choiceTorrentFile() = ChoiceTorrentFileEvent;

  const factory AddTorrentEvent.startDownload(String savePath) =
      StartDownloadEvent;

  const factory AddTorrentEvent.onChangeUrl(String newValue) = ChangeUrlEvent;

  const factory AddTorrentEvent.checkDownloadFolder() =
      CheckDownloadFolderEvent;

  const factory AddTorrentEvent.selectArgUri() = SelectArgUri;

  const factory AddTorrentEvent.loadSetup() = LoadSetupEvent;

  const factory AddTorrentEvent.onCheckArg(AddTorrentArg arg) = CheckArgEvent;
}

@freezed
abstract class AddTorrentState with _$AddTorrentState {
  const AddTorrentState._();

  const factory AddTorrentState.initial() = InitialAddTorrentState;

  const factory AddTorrentState.showError(String message) = ShowErrorState;

  const factory AddTorrentState.switchInputType(bool isFileSelected) =
      SwitchInputTypeState;

  const factory AddTorrentState.isEnableDownloadButton(bool isEnable) =
      EnableDownloadButtonState;

  const factory AddTorrentState.fileSelected(String selectedFiles) =
      FileSelectedState;

  const factory AddTorrentState.addTorrentSuccess() = AddTorrentSuccessState;

  const factory AddTorrentState.showDefaultSavePath(String path) =
      ShowDefaultSavePathState;

  const factory AddTorrentState.setDownloadUrl(String url) =
      SetDownloadUrlState;
}

class AddTorrentBloc extends Bloc<AddTorrentEvent, AddTorrentState> {
  final LocalRepository _localRepository;
  final QBitRemoteRepository _qBittorentRepository;
  bool _isFileSourceSelected = true;
  List<PlatformFile> _filesSelectedPath = [];
  String _urlLink = "";

  AddTorrentBloc(this._localRepository, this._qBittorentRepository)
      : super(const InitialAddTorrentState()) {
    add(LoadSetupEvent());
  }

  @override
  Stream<AddTorrentState> mapEventToState(AddTorrentEvent event) {
    return event.when<Stream<AddTorrentState>>(
      onSwitchInputSource: _onSwitchInputSource,
      choiceTorrentFile: _choiceTorrentFile,
      startDownload: _startDownload,
      onChangeUrl: _onChangeUrl,
      checkDownloadFolder: _checkDownloadFolder,
      selectArgUri: _selectArgUri,
      loadSetup: _loadSetup,
      onCheckArg: _onCheckArg,
    );
  }

  Stream<AddTorrentState> _onSwitchInputSource(
      bool isFileSourceSelected) async* {
    _isFileSourceSelected = isFileSourceSelected;
    yield AddTorrentState.switchInputType(_isFileSourceSelected);
    yield* _invalidateButton();
  }

  Stream<AddTorrentState> _invalidateButton() async* {
    var result = false;
    if (_isFileSourceSelected && _filesSelectedPath.isNotEmpty) {
      result = true;
    } else if (!_isFileSourceSelected &&
        (isURL(_urlLink) || isMagnetLink(_urlLink))) {
      result = true;
    } else {
      result = false;
    }
    yield AddTorrentState.isEnableDownloadButton(result);
  }

  Stream<AddTorrentState> _choiceTorrentFile() async* {
    final fileResult = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ["torrent"],
        allowMultiple: true);
    if (fileResult != null && fileResult.files.length > 0) {
      _filesSelectedPath.clear();
      fileResult.files.forEach((element) {
        _filesSelectedPath.add(element);
      });

      String fileNames = "";
      _filesSelectedPath.forEach((element) {
        fileNames += element.name + "\n";
      });
      yield AddTorrentState.fileSelected(fileNames);
      yield* _invalidateButton();
    }
  }

  Stream<AddTorrentState> _startDownload(String savePath) async* {
    UiResponse<bool> result = UiResponse(false, "");
    final currentServerHost = await getCurrentServerHost();
    if (_isFileSourceSelected) {
      result = await _qBittorentRepository.addTorrentByFile(
          currentServerHost, _filesSelectedPath, savePath);
    } else {
      result = await _qBittorentRepository.addTorrentByUrl(
          currentServerHost, _urlLink, savePath);
    }
    if (result.error.isEmpty) {
      yield AddTorrentState.addTorrentSuccess();
    } else {
      yield AddTorrentState.showError(result.error);
    }
  }

  Stream<AddTorrentState> _onChangeUrl(String newValue) async* {
    _urlLink = newValue;
    yield* _invalidateButton();
  }

  Stream<AddTorrentState> _checkDownloadFolder() async* {}

  Stream<AddTorrentState> _selectArgUri() async* {}

  Stream<AddTorrentState> _loadSetup() async* {
    final currentServerHost = await getCurrentServerHost();
    String path =
        await _qBittorentRepository.getDefaultSavePath(currentServerHost);
    final savePath = path ?? "";
    yield ShowDefaultSavePathState(savePath);
  }

  Stream<AddTorrentState> _onCheckArg(AddTorrentArg arg) async* {
    if (arg != null) {
      if (arg.isMagnetLink) {
        _isFileSourceSelected = false;
        yield AddTorrentState.switchInputType(_isFileSourceSelected);
        yield SetDownloadUrlState(arg.uri);
      } else {
        final file = File(arg.uri);
        _filesSelectedPath = [
          PlatformFile(path: file.path, name: basename(file.path))
        ];
        String fileNames = "";
        _filesSelectedPath.forEach((element) {
          fileNames += element.name + "\n";
        });
        yield AddTorrentState.fileSelected(fileNames);
        yield* _invalidateButton();
      }
    }
  }

  Future<ServerHost> getCurrentServerHost() async {
    return await _localRepository.findSelectedServerHost();
  }
}
