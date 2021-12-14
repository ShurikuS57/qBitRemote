import 'package:freezed_annotation/freezed_annotation.dart';

import 'add_torrent_bloc.dart';

part 'add_torrent_state.freezed.dart';

@freezed
class AddTorrentState with _$AddTorrentState {
  const AddTorrentState._();

  const factory AddTorrentState.initial() = InitialAddTorrentState;

  const factory AddTorrentState.showError(String message) = ShowErrorState;

  const factory AddTorrentState.switchInputType(bool isFileSelected) =
  SwitchInputTypeState;

  const factory AddTorrentState.isEnableDownloadButton(bool isEnable) =
  EnableDownloadButtonState;

  const factory AddTorrentState.fileSelected(List<String> selectedFiles) =
  FileSelectedState;

  const factory AddTorrentState.addTorrentSuccess() = AddTorrentSuccessState;

  const factory AddTorrentState.showPrefsOptions(PrefOptions options) =
  ShowPrefOptionsState;

  const factory AddTorrentState.setDownloadUrl(String url) =
  SetDownloadUrlState;
}