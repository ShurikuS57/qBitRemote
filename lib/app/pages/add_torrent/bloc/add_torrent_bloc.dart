import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';
import 'package:qBitRemote/api/http.dart';
import 'package:qBitRemote/api/remote_repository.dart';
import 'package:qBitRemote/app/pages/add_server/bloc/add_server_state.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';
import 'package:qBitRemote/local/models/app_prefs.dart';
import 'package:qBitRemote/local/models/server_host.dart';
import 'package:qBitRemote/repo/local_repository.dart';
import 'package:string_validator/string_validator.dart';

import '../add_torrent_page.dart';
import 'add_torrent_event.dart';
import 'add_torrent_state.dart';

class AddTorrentBloc extends Bloc<AddTorrentEvent, AddTorrentState> {
  final LocalRepository _localRepository;
  final RemoteRepository _qBittorentRepository;
  bool _isFileSourceSelected = true;
  List<PlatformFile> _filesSelectedPath = [];
  String _urlLink = "";
  PrefOptions options = PrefOptions();

  AddTorrentBloc(this._localRepository, this._qBittorentRepository)
      : super(const InitialAddTorrentState()) {
    on<SwitchInputSourceEvent>(_onSwitchInputSource);
    on<ChoiceTorrentFileEvent>(_choiceTorrentFile);
    on<StartDownloadEvent>(_startDownload);
    on<ChangeUrlEvent>(_onChangeUrl);
    on<CheckDownloadFolderEvent>(_checkDownloadFolder);
    on<SelectArgUri>(_selectArgUri);
    on<LoadSetupEvent>(_loadSetup);
    on<CheckArgEvent>(_onCheckArg);
    on<UpdateOptionsEvent>(_updateOptions);
    on<RemoveTorrentFile>(_removeTorrentFile);

    add(LoadSetupEvent());
  }

  void _onSwitchInputSource(
      SwitchInputSourceEvent event, Emitter<AddTorrentState> emit) async {
    _isFileSourceSelected = event.isFileSourceSelected;
    if (!_isFileSourceSelected) {
      _filesSelectedPath.clear();
      List<String> fileNames = prepareFileNameList();
      emit(AddTorrentState.fileSelected(fileNames));
    }
    emit(AddTorrentState.switchInputType(event.isFileSourceSelected));
    _invalidateButton(emit);
  }

  void _invalidateButton(Emitter<AddTorrentState> emit) async {
    var result = false;
    if (_isFileSourceSelected && _filesSelectedPath.isNotEmpty) {
      result = true;
    } else if (!_isFileSourceSelected &&
        (isURL(_urlLink) || isMagnetLink(_urlLink))) {
      result = true;
    } else {
      result = false;
    }
    emit(AddTorrentState.isEnableDownloadButton(result));
  }

  void _choiceTorrentFile(
      ChoiceTorrentFileEvent event, Emitter<AddTorrentState> emit) async {
    final fileResult = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ["torrent"],
        allowMultiple: true);
    if (fileResult != null && fileResult.files.length > 0) {
      fileResult.files.forEach((selectedFile) {
        var isInclude = false;
        _filesSelectedPath.forEach((item) {
          if (selectedFile.name == item.name) {
            isInclude = true;
          }
        });
        if (!isInclude) {
          _filesSelectedPath.add(selectedFile);
        }
      });
      List<String> fileNames = prepareFileNameList();
      emit(AddTorrentState.fileSelected(fileNames));
      _invalidateButton(emit);
    }
  }

  void _startDownload(
      StartDownloadEvent event, Emitter<AddTorrentState> emit) async {
    final options = event.options;
    UiResponse<bool> result = UiResponse(false, "");
    final currentServerHost = await getCurrentServerHost();
    if (currentServerHost == null) {
      ShowErrorState("Server no selected");
      return;
    }
    if (_isFileSourceSelected) {
      result = await _qBittorentRepository.addTorrentByFile(
          currentServerHost, _filesSelectedPath, options);
    } else {
      result = await _qBittorentRepository.addTorrentByUrl(
          currentServerHost, _urlLink, options);
    }
    if (result.error.isEmpty) {
      emit(AddTorrentState.addTorrentSuccess());
    } else {
      emit(AddTorrentState.showError(result.error));
    }
  }

  void _onChangeUrl(ChangeUrlEvent event, Emitter<AddTorrentState> emit) async {
    _urlLink = event.newValue;
    _invalidateButton(emit);
  }

  void _checkDownloadFolder(
      CheckDownloadFolderEvent event, Emitter<AddTorrentState> emit) async {}

  void _selectArgUri(SelectArgUri event, Emitter<AddTorrentState> emit) async {}

  void _loadSetup(LoadSetupEvent event, Emitter<AddTorrentState> emit) async {
    final currentServerHost = await getCurrentServerHost();
    if (currentServerHost == null) {
      ShowErrorState("Server no selected");
      return;
    }
    String path =
        await _qBittorentRepository.getDefaultSavePath(currentServerHost);
    AppPrefs prefs = await _localRepository.loadAppPrefs();
    options = PrefOptions(
        savePath: path,
        isSequentialDownload: prefs.sequentialDownload,
        isDownloadFirst: prefs.downloadFirst);
    emit(ShowPrefOptionsState(options));
  }

  void _updateOptions(
      UpdateOptionsEvent event, Emitter<AddTorrentState> emit
      ) async {
    options = event.newValue;
    emit(ShowPrefOptionsState(options));
  }

  void _onCheckArg(CheckArgEvent event, Emitter<AddTorrentState> emit) async {
    final arg = event.arg;
    if (arg.isMagnetLink) {
      _isFileSourceSelected = false;
      emit(AddTorrentState.switchInputType(_isFileSourceSelected));
      emit(SetDownloadUrlState(arg.uri));
    } else {
      final file = File(arg.uri);
      _filesSelectedPath = [
        PlatformFile(path: file.path, name: basename(file.path), size: 0)
      ];
      List<String> fileNames = prepareFileNameList();
      emit(AddTorrentState.fileSelected(fileNames));
      _invalidateButton(emit);
    }
  }

  void _removeTorrentFile(RemoveTorrentFile event, Emitter<AddTorrentState> emit) async {
    final removeFileName = event.file;
    for (int i = 0; i < _filesSelectedPath.length; i++) {
      if (_filesSelectedPath[i].name == removeFileName) {
        _filesSelectedPath.removeAt(i);
        break;
      }
    }
    List<String> fileNames = prepareFileNameList();
    emit(AddTorrentState.fileSelected(fileNames));
    _invalidateButton(emit);
  }

  List<String> prepareFileNameList() {
    List<String> fileNames = [];
    _filesSelectedPath.forEach((element) {
      String? name = element.name;
      fileNames.add(name);
    });
    return fileNames;
  }

  Future<ServerHost?> getCurrentServerHost() async {
    return await _localRepository.findSelectedServerHost();
  }
}

class PrefOptions {
  final String savePath;
  final bool isSequentialDownload;
  final bool isDownloadFirst;

  PrefOptions(
      {this.savePath = "",
      this.isSequentialDownload = false,
      this.isDownloadFirst = false});
}
