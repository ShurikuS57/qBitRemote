import 'package:freezed_annotation/freezed_annotation.dart';

import '../add_torrent_page.dart';
import 'add_torrent_bloc.dart';

part 'add_torrent_event.freezed.dart';

@freezed
class AddTorrentEvent with _$AddTorrentEvent {
  const AddTorrentEvent._();

  const factory AddTorrentEvent.onSwitchInputSource(bool isFileSourceSelected) =
  SwitchInputSourceEvent;

  const factory AddTorrentEvent.choiceTorrentFile() = ChoiceTorrentFileEvent;

  const factory AddTorrentEvent.startDownload(PrefOptions options) =
  StartDownloadEvent;

  const factory AddTorrentEvent.onChangeUrl(String newValue) = ChangeUrlEvent;

  const factory AddTorrentEvent.checkDownloadFolder() =
  CheckDownloadFolderEvent;

  const factory AddTorrentEvent.selectArgUri() = SelectArgUri;

  const factory AddTorrentEvent.loadSetup() = LoadSetupEvent;

  const factory AddTorrentEvent.onCheckArg(AddTorrentArg arg) = CheckArgEvent;

  const factory AddTorrentEvent.updateOptions(PrefOptions newValue) =
  UpdateOptionsEvent;

  const factory AddTorrentEvent.removeTorrentFile(String file) =
  RemoveTorrentFile;
}