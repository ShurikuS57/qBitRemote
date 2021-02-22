// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_torrent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddTorrentEventTearOff {
  const _$AddTorrentEventTearOff();

// ignore: unused_element
  SwitchInputSourceEvent onSwitchInputSource(bool isFileSourceSelected) {
    return SwitchInputSourceEvent(
      isFileSourceSelected,
    );
  }

// ignore: unused_element
  ChoiceTorrentFileEvent choiceTorrentFile() {
    return const ChoiceTorrentFileEvent();
  }

// ignore: unused_element
  StartDownloadEvent startDownload(String savePath) {
    return StartDownloadEvent(
      savePath,
    );
  }

// ignore: unused_element
  ChangeUrlEvent onChangeUrl(String newValue) {
    return ChangeUrlEvent(
      newValue,
    );
  }

// ignore: unused_element
  CheckDownloadFolderEvent checkDownloadFolder() {
    return const CheckDownloadFolderEvent();
  }

// ignore: unused_element
  SelectArgUri selectArgUri() {
    return const SelectArgUri();
  }

// ignore: unused_element
  LoadSetupEvent loadSetup() {
    return const LoadSetupEvent();
  }

// ignore: unused_element
  CheckArgEvent onCheckArg(AddTorrentArg arg) {
    return CheckArgEvent(
      arg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddTorrentEvent = _$AddTorrentEventTearOff();

/// @nodoc
mixin _$AddTorrentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddTorrentEventCopyWith<$Res> {
  factory $AddTorrentEventCopyWith(
          AddTorrentEvent value, $Res Function(AddTorrentEvent) then) =
      _$AddTorrentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddTorrentEventCopyWithImpl<$Res>
    implements $AddTorrentEventCopyWith<$Res> {
  _$AddTorrentEventCopyWithImpl(this._value, this._then);

  final AddTorrentEvent _value;
  // ignore: unused_field
  final $Res Function(AddTorrentEvent) _then;
}

/// @nodoc
abstract class $SwitchInputSourceEventCopyWith<$Res> {
  factory $SwitchInputSourceEventCopyWith(SwitchInputSourceEvent value,
          $Res Function(SwitchInputSourceEvent) then) =
      _$SwitchInputSourceEventCopyWithImpl<$Res>;
  $Res call({bool isFileSourceSelected});
}

/// @nodoc
class _$SwitchInputSourceEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $SwitchInputSourceEventCopyWith<$Res> {
  _$SwitchInputSourceEventCopyWithImpl(SwitchInputSourceEvent _value,
      $Res Function(SwitchInputSourceEvent) _then)
      : super(_value, (v) => _then(v as SwitchInputSourceEvent));

  @override
  SwitchInputSourceEvent get _value => super._value as SwitchInputSourceEvent;

  @override
  $Res call({
    Object isFileSourceSelected = freezed,
  }) {
    return _then(SwitchInputSourceEvent(
      isFileSourceSelected == freezed
          ? _value.isFileSourceSelected
          : isFileSourceSelected as bool,
    ));
  }
}

/// @nodoc
class _$SwitchInputSourceEvent extends SwitchInputSourceEvent {
  const _$SwitchInputSourceEvent(this.isFileSourceSelected)
      : assert(isFileSourceSelected != null),
        super._();

  @override
  final bool isFileSourceSelected;

  @override
  String toString() {
    return 'AddTorrentEvent.onSwitchInputSource(isFileSourceSelected: $isFileSourceSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SwitchInputSourceEvent &&
            (identical(other.isFileSourceSelected, isFileSourceSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isFileSourceSelected, isFileSourceSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFileSourceSelected);

  @JsonKey(ignore: true)
  @override
  $SwitchInputSourceEventCopyWith<SwitchInputSourceEvent> get copyWith =>
      _$SwitchInputSourceEventCopyWithImpl<SwitchInputSourceEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return onSwitchInputSource(isFileSourceSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSwitchInputSource != null) {
      return onSwitchInputSource(isFileSourceSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return onSwitchInputSource(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSwitchInputSource != null) {
      return onSwitchInputSource(this);
    }
    return orElse();
  }
}

abstract class SwitchInputSourceEvent extends AddTorrentEvent {
  const SwitchInputSourceEvent._() : super._();
  const factory SwitchInputSourceEvent(bool isFileSourceSelected) =
      _$SwitchInputSourceEvent;

  bool get isFileSourceSelected;
  @JsonKey(ignore: true)
  $SwitchInputSourceEventCopyWith<SwitchInputSourceEvent> get copyWith;
}

/// @nodoc
abstract class $ChoiceTorrentFileEventCopyWith<$Res> {
  factory $ChoiceTorrentFileEventCopyWith(ChoiceTorrentFileEvent value,
          $Res Function(ChoiceTorrentFileEvent) then) =
      _$ChoiceTorrentFileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChoiceTorrentFileEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $ChoiceTorrentFileEventCopyWith<$Res> {
  _$ChoiceTorrentFileEventCopyWithImpl(ChoiceTorrentFileEvent _value,
      $Res Function(ChoiceTorrentFileEvent) _then)
      : super(_value, (v) => _then(v as ChoiceTorrentFileEvent));

  @override
  ChoiceTorrentFileEvent get _value => super._value as ChoiceTorrentFileEvent;
}

/// @nodoc
class _$ChoiceTorrentFileEvent extends ChoiceTorrentFileEvent {
  const _$ChoiceTorrentFileEvent() : super._();

  @override
  String toString() {
    return 'AddTorrentEvent.choiceTorrentFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChoiceTorrentFileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return choiceTorrentFile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (choiceTorrentFile != null) {
      return choiceTorrentFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return choiceTorrentFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (choiceTorrentFile != null) {
      return choiceTorrentFile(this);
    }
    return orElse();
  }
}

abstract class ChoiceTorrentFileEvent extends AddTorrentEvent {
  const ChoiceTorrentFileEvent._() : super._();
  const factory ChoiceTorrentFileEvent() = _$ChoiceTorrentFileEvent;
}

/// @nodoc
abstract class $StartDownloadEventCopyWith<$Res> {
  factory $StartDownloadEventCopyWith(
          StartDownloadEvent value, $Res Function(StartDownloadEvent) then) =
      _$StartDownloadEventCopyWithImpl<$Res>;
  $Res call({String savePath});
}

/// @nodoc
class _$StartDownloadEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $StartDownloadEventCopyWith<$Res> {
  _$StartDownloadEventCopyWithImpl(
      StartDownloadEvent _value, $Res Function(StartDownloadEvent) _then)
      : super(_value, (v) => _then(v as StartDownloadEvent));

  @override
  StartDownloadEvent get _value => super._value as StartDownloadEvent;

  @override
  $Res call({
    Object savePath = freezed,
  }) {
    return _then(StartDownloadEvent(
      savePath == freezed ? _value.savePath : savePath as String,
    ));
  }
}

/// @nodoc
class _$StartDownloadEvent extends StartDownloadEvent {
  const _$StartDownloadEvent(this.savePath)
      : assert(savePath != null),
        super._();

  @override
  final String savePath;

  @override
  String toString() {
    return 'AddTorrentEvent.startDownload(savePath: $savePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartDownloadEvent &&
            (identical(other.savePath, savePath) ||
                const DeepCollectionEquality()
                    .equals(other.savePath, savePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(savePath);

  @JsonKey(ignore: true)
  @override
  $StartDownloadEventCopyWith<StartDownloadEvent> get copyWith =>
      _$StartDownloadEventCopyWithImpl<StartDownloadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return startDownload(savePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startDownload != null) {
      return startDownload(savePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return startDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startDownload != null) {
      return startDownload(this);
    }
    return orElse();
  }
}

abstract class StartDownloadEvent extends AddTorrentEvent {
  const StartDownloadEvent._() : super._();
  const factory StartDownloadEvent(String savePath) = _$StartDownloadEvent;

  String get savePath;
  @JsonKey(ignore: true)
  $StartDownloadEventCopyWith<StartDownloadEvent> get copyWith;
}

/// @nodoc
abstract class $ChangeUrlEventCopyWith<$Res> {
  factory $ChangeUrlEventCopyWith(
          ChangeUrlEvent value, $Res Function(ChangeUrlEvent) then) =
      _$ChangeUrlEventCopyWithImpl<$Res>;
  $Res call({String newValue});
}

/// @nodoc
class _$ChangeUrlEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $ChangeUrlEventCopyWith<$Res> {
  _$ChangeUrlEventCopyWithImpl(
      ChangeUrlEvent _value, $Res Function(ChangeUrlEvent) _then)
      : super(_value, (v) => _then(v as ChangeUrlEvent));

  @override
  ChangeUrlEvent get _value => super._value as ChangeUrlEvent;

  @override
  $Res call({
    Object newValue = freezed,
  }) {
    return _then(ChangeUrlEvent(
      newValue == freezed ? _value.newValue : newValue as String,
    ));
  }
}

/// @nodoc
class _$ChangeUrlEvent extends ChangeUrlEvent {
  const _$ChangeUrlEvent(this.newValue)
      : assert(newValue != null),
        super._();

  @override
  final String newValue;

  @override
  String toString() {
    return 'AddTorrentEvent.onChangeUrl(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeUrlEvent &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newValue);

  @JsonKey(ignore: true)
  @override
  $ChangeUrlEventCopyWith<ChangeUrlEvent> get copyWith =>
      _$ChangeUrlEventCopyWithImpl<ChangeUrlEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return onChangeUrl(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangeUrl != null) {
      return onChangeUrl(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return onChangeUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onChangeUrl != null) {
      return onChangeUrl(this);
    }
    return orElse();
  }
}

abstract class ChangeUrlEvent extends AddTorrentEvent {
  const ChangeUrlEvent._() : super._();
  const factory ChangeUrlEvent(String newValue) = _$ChangeUrlEvent;

  String get newValue;
  @JsonKey(ignore: true)
  $ChangeUrlEventCopyWith<ChangeUrlEvent> get copyWith;
}

/// @nodoc
abstract class $CheckDownloadFolderEventCopyWith<$Res> {
  factory $CheckDownloadFolderEventCopyWith(CheckDownloadFolderEvent value,
          $Res Function(CheckDownloadFolderEvent) then) =
      _$CheckDownloadFolderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckDownloadFolderEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $CheckDownloadFolderEventCopyWith<$Res> {
  _$CheckDownloadFolderEventCopyWithImpl(CheckDownloadFolderEvent _value,
      $Res Function(CheckDownloadFolderEvent) _then)
      : super(_value, (v) => _then(v as CheckDownloadFolderEvent));

  @override
  CheckDownloadFolderEvent get _value =>
      super._value as CheckDownloadFolderEvent;
}

/// @nodoc
class _$CheckDownloadFolderEvent extends CheckDownloadFolderEvent {
  const _$CheckDownloadFolderEvent() : super._();

  @override
  String toString() {
    return 'AddTorrentEvent.checkDownloadFolder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckDownloadFolderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return checkDownloadFolder();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkDownloadFolder != null) {
      return checkDownloadFolder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return checkDownloadFolder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkDownloadFolder != null) {
      return checkDownloadFolder(this);
    }
    return orElse();
  }
}

abstract class CheckDownloadFolderEvent extends AddTorrentEvent {
  const CheckDownloadFolderEvent._() : super._();
  const factory CheckDownloadFolderEvent() = _$CheckDownloadFolderEvent;
}

/// @nodoc
abstract class $SelectArgUriCopyWith<$Res> {
  factory $SelectArgUriCopyWith(
          SelectArgUri value, $Res Function(SelectArgUri) then) =
      _$SelectArgUriCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectArgUriCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $SelectArgUriCopyWith<$Res> {
  _$SelectArgUriCopyWithImpl(
      SelectArgUri _value, $Res Function(SelectArgUri) _then)
      : super(_value, (v) => _then(v as SelectArgUri));

  @override
  SelectArgUri get _value => super._value as SelectArgUri;
}

/// @nodoc
class _$SelectArgUri extends SelectArgUri {
  const _$SelectArgUri() : super._();

  @override
  String toString() {
    return 'AddTorrentEvent.selectArgUri()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectArgUri);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return selectArgUri();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectArgUri != null) {
      return selectArgUri();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return selectArgUri(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectArgUri != null) {
      return selectArgUri(this);
    }
    return orElse();
  }
}

abstract class SelectArgUri extends AddTorrentEvent {
  const SelectArgUri._() : super._();
  const factory SelectArgUri() = _$SelectArgUri;
}

/// @nodoc
abstract class $LoadSetupEventCopyWith<$Res> {
  factory $LoadSetupEventCopyWith(
          LoadSetupEvent value, $Res Function(LoadSetupEvent) then) =
      _$LoadSetupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadSetupEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $LoadSetupEventCopyWith<$Res> {
  _$LoadSetupEventCopyWithImpl(
      LoadSetupEvent _value, $Res Function(LoadSetupEvent) _then)
      : super(_value, (v) => _then(v as LoadSetupEvent));

  @override
  LoadSetupEvent get _value => super._value as LoadSetupEvent;
}

/// @nodoc
class _$LoadSetupEvent extends LoadSetupEvent {
  const _$LoadSetupEvent() : super._();

  @override
  String toString() {
    return 'AddTorrentEvent.loadSetup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadSetupEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return loadSetup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSetup != null) {
      return loadSetup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return loadSetup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSetup != null) {
      return loadSetup(this);
    }
    return orElse();
  }
}

abstract class LoadSetupEvent extends AddTorrentEvent {
  const LoadSetupEvent._() : super._();
  const factory LoadSetupEvent() = _$LoadSetupEvent;
}

/// @nodoc
abstract class $CheckArgEventCopyWith<$Res> {
  factory $CheckArgEventCopyWith(
          CheckArgEvent value, $Res Function(CheckArgEvent) then) =
      _$CheckArgEventCopyWithImpl<$Res>;
  $Res call({AddTorrentArg arg});
}

/// @nodoc
class _$CheckArgEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $CheckArgEventCopyWith<$Res> {
  _$CheckArgEventCopyWithImpl(
      CheckArgEvent _value, $Res Function(CheckArgEvent) _then)
      : super(_value, (v) => _then(v as CheckArgEvent));

  @override
  CheckArgEvent get _value => super._value as CheckArgEvent;

  @override
  $Res call({
    Object arg = freezed,
  }) {
    return _then(CheckArgEvent(
      arg == freezed ? _value.arg : arg as AddTorrentArg,
    ));
  }
}

/// @nodoc
class _$CheckArgEvent extends CheckArgEvent {
  const _$CheckArgEvent(this.arg)
      : assert(arg != null),
        super._();

  @override
  final AddTorrentArg arg;

  @override
  String toString() {
    return 'AddTorrentEvent.onCheckArg(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckArgEvent &&
            (identical(other.arg, arg) ||
                const DeepCollectionEquality().equals(other.arg, arg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(arg);

  @JsonKey(ignore: true)
  @override
  $CheckArgEventCopyWith<CheckArgEvent> get copyWith =>
      _$CheckArgEventCopyWithImpl<CheckArgEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult onSwitchInputSource(bool isFileSourceSelected),
    @required TResult choiceTorrentFile(),
    @required TResult startDownload(String savePath),
    @required TResult onChangeUrl(String newValue),
    @required TResult checkDownloadFolder(),
    @required TResult selectArgUri(),
    @required TResult loadSetup(),
    @required TResult onCheckArg(AddTorrentArg arg),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return onCheckArg(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult onSwitchInputSource(bool isFileSourceSelected),
    TResult choiceTorrentFile(),
    TResult startDownload(String savePath),
    TResult onChangeUrl(String newValue),
    TResult checkDownloadFolder(),
    TResult selectArgUri(),
    TResult loadSetup(),
    TResult onCheckArg(AddTorrentArg arg),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCheckArg != null) {
      return onCheckArg(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult onSwitchInputSource(SwitchInputSourceEvent value),
    @required TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    @required TResult startDownload(StartDownloadEvent value),
    @required TResult onChangeUrl(ChangeUrlEvent value),
    @required TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    @required TResult selectArgUri(SelectArgUri value),
    @required TResult loadSetup(LoadSetupEvent value),
    @required TResult onCheckArg(CheckArgEvent value),
  }) {
    assert(onSwitchInputSource != null);
    assert(choiceTorrentFile != null);
    assert(startDownload != null);
    assert(onChangeUrl != null);
    assert(checkDownloadFolder != null);
    assert(selectArgUri != null);
    assert(loadSetup != null);
    assert(onCheckArg != null);
    return onCheckArg(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult onSwitchInputSource(SwitchInputSourceEvent value),
    TResult choiceTorrentFile(ChoiceTorrentFileEvent value),
    TResult startDownload(StartDownloadEvent value),
    TResult onChangeUrl(ChangeUrlEvent value),
    TResult checkDownloadFolder(CheckDownloadFolderEvent value),
    TResult selectArgUri(SelectArgUri value),
    TResult loadSetup(LoadSetupEvent value),
    TResult onCheckArg(CheckArgEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onCheckArg != null) {
      return onCheckArg(this);
    }
    return orElse();
  }
}

abstract class CheckArgEvent extends AddTorrentEvent {
  const CheckArgEvent._() : super._();
  const factory CheckArgEvent(AddTorrentArg arg) = _$CheckArgEvent;

  AddTorrentArg get arg;
  @JsonKey(ignore: true)
  $CheckArgEventCopyWith<CheckArgEvent> get copyWith;
}

/// @nodoc
class _$AddTorrentStateTearOff {
  const _$AddTorrentStateTearOff();

// ignore: unused_element
  InitialAddTorrentState initial() {
    return const InitialAddTorrentState();
  }

// ignore: unused_element
  ShowErrorState showError(String message) {
    return ShowErrorState(
      message,
    );
  }

// ignore: unused_element
  SwitchInputTypeState switchInputType(bool isFileSelected) {
    return SwitchInputTypeState(
      isFileSelected,
    );
  }

// ignore: unused_element
  EnableDownloadButtonState isEnableDownloadButton(bool isEnable) {
    return EnableDownloadButtonState(
      isEnable,
    );
  }

// ignore: unused_element
  FileSelectedState fileSelected(String selectedFiles) {
    return FileSelectedState(
      selectedFiles,
    );
  }

// ignore: unused_element
  AddTorrentSuccessState addTorrentSuccess() {
    return const AddTorrentSuccessState();
  }

// ignore: unused_element
  ShowDefaultSavePathState showDefaultSavePath(String path) {
    return ShowDefaultSavePathState(
      path,
    );
  }

// ignore: unused_element
  SetDownloadUrlState setDownloadUrl(String url) {
    return SetDownloadUrlState(
      url,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddTorrentState = _$AddTorrentStateTearOff();

/// @nodoc
mixin _$AddTorrentState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddTorrentStateCopyWith<$Res> {
  factory $AddTorrentStateCopyWith(
          AddTorrentState value, $Res Function(AddTorrentState) then) =
      _$AddTorrentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddTorrentStateCopyWithImpl<$Res>
    implements $AddTorrentStateCopyWith<$Res> {
  _$AddTorrentStateCopyWithImpl(this._value, this._then);

  final AddTorrentState _value;
  // ignore: unused_field
  final $Res Function(AddTorrentState) _then;
}

/// @nodoc
abstract class $InitialAddTorrentStateCopyWith<$Res> {
  factory $InitialAddTorrentStateCopyWith(InitialAddTorrentState value,
          $Res Function(InitialAddTorrentState) then) =
      _$InitialAddTorrentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialAddTorrentStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $InitialAddTorrentStateCopyWith<$Res> {
  _$InitialAddTorrentStateCopyWithImpl(InitialAddTorrentState _value,
      $Res Function(InitialAddTorrentState) _then)
      : super(_value, (v) => _then(v as InitialAddTorrentState));

  @override
  InitialAddTorrentState get _value => super._value as InitialAddTorrentState;
}

/// @nodoc
class _$InitialAddTorrentState extends InitialAddTorrentState {
  const _$InitialAddTorrentState() : super._();

  @override
  String toString() {
    return 'AddTorrentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialAddTorrentState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAddTorrentState extends AddTorrentState {
  const InitialAddTorrentState._() : super._();
  const factory InitialAddTorrentState() = _$InitialAddTorrentState;
}

/// @nodoc
abstract class $ShowErrorStateCopyWith<$Res> {
  factory $ShowErrorStateCopyWith(
          ShowErrorState value, $Res Function(ShowErrorState) then) =
      _$ShowErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ShowErrorStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $ShowErrorStateCopyWith<$Res> {
  _$ShowErrorStateCopyWithImpl(
      ShowErrorState _value, $Res Function(ShowErrorState) _then)
      : super(_value, (v) => _then(v as ShowErrorState));

  @override
  ShowErrorState get _value => super._value as ShowErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ShowErrorState(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ShowErrorState extends ShowErrorState {
  const _$ShowErrorState(this.message)
      : assert(message != null),
        super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AddTorrentState.showError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ShowErrorStateCopyWith<ShowErrorState> get copyWith =>
      _$ShowErrorStateCopyWithImpl<ShowErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return showError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showError != null) {
      return showError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class ShowErrorState extends AddTorrentState {
  const ShowErrorState._() : super._();
  const factory ShowErrorState(String message) = _$ShowErrorState;

  String get message;
  @JsonKey(ignore: true)
  $ShowErrorStateCopyWith<ShowErrorState> get copyWith;
}

/// @nodoc
abstract class $SwitchInputTypeStateCopyWith<$Res> {
  factory $SwitchInputTypeStateCopyWith(SwitchInputTypeState value,
          $Res Function(SwitchInputTypeState) then) =
      _$SwitchInputTypeStateCopyWithImpl<$Res>;
  $Res call({bool isFileSelected});
}

/// @nodoc
class _$SwitchInputTypeStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $SwitchInputTypeStateCopyWith<$Res> {
  _$SwitchInputTypeStateCopyWithImpl(
      SwitchInputTypeState _value, $Res Function(SwitchInputTypeState) _then)
      : super(_value, (v) => _then(v as SwitchInputTypeState));

  @override
  SwitchInputTypeState get _value => super._value as SwitchInputTypeState;

  @override
  $Res call({
    Object isFileSelected = freezed,
  }) {
    return _then(SwitchInputTypeState(
      isFileSelected == freezed
          ? _value.isFileSelected
          : isFileSelected as bool,
    ));
  }
}

/// @nodoc
class _$SwitchInputTypeState extends SwitchInputTypeState {
  const _$SwitchInputTypeState(this.isFileSelected)
      : assert(isFileSelected != null),
        super._();

  @override
  final bool isFileSelected;

  @override
  String toString() {
    return 'AddTorrentState.switchInputType(isFileSelected: $isFileSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SwitchInputTypeState &&
            (identical(other.isFileSelected, isFileSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isFileSelected, isFileSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFileSelected);

  @JsonKey(ignore: true)
  @override
  $SwitchInputTypeStateCopyWith<SwitchInputTypeState> get copyWith =>
      _$SwitchInputTypeStateCopyWithImpl<SwitchInputTypeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return switchInputType(isFileSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (switchInputType != null) {
      return switchInputType(isFileSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return switchInputType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (switchInputType != null) {
      return switchInputType(this);
    }
    return orElse();
  }
}

abstract class SwitchInputTypeState extends AddTorrentState {
  const SwitchInputTypeState._() : super._();
  const factory SwitchInputTypeState(bool isFileSelected) =
      _$SwitchInputTypeState;

  bool get isFileSelected;
  @JsonKey(ignore: true)
  $SwitchInputTypeStateCopyWith<SwitchInputTypeState> get copyWith;
}

/// @nodoc
abstract class $EnableDownloadButtonStateCopyWith<$Res> {
  factory $EnableDownloadButtonStateCopyWith(EnableDownloadButtonState value,
          $Res Function(EnableDownloadButtonState) then) =
      _$EnableDownloadButtonStateCopyWithImpl<$Res>;
  $Res call({bool isEnable});
}

/// @nodoc
class _$EnableDownloadButtonStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $EnableDownloadButtonStateCopyWith<$Res> {
  _$EnableDownloadButtonStateCopyWithImpl(EnableDownloadButtonState _value,
      $Res Function(EnableDownloadButtonState) _then)
      : super(_value, (v) => _then(v as EnableDownloadButtonState));

  @override
  EnableDownloadButtonState get _value =>
      super._value as EnableDownloadButtonState;

  @override
  $Res call({
    Object isEnable = freezed,
  }) {
    return _then(EnableDownloadButtonState(
      isEnable == freezed ? _value.isEnable : isEnable as bool,
    ));
  }
}

/// @nodoc
class _$EnableDownloadButtonState extends EnableDownloadButtonState {
  const _$EnableDownloadButtonState(this.isEnable)
      : assert(isEnable != null),
        super._();

  @override
  final bool isEnable;

  @override
  String toString() {
    return 'AddTorrentState.isEnableDownloadButton(isEnable: $isEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EnableDownloadButtonState &&
            (identical(other.isEnable, isEnable) ||
                const DeepCollectionEquality()
                    .equals(other.isEnable, isEnable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnable);

  @JsonKey(ignore: true)
  @override
  $EnableDownloadButtonStateCopyWith<EnableDownloadButtonState> get copyWith =>
      _$EnableDownloadButtonStateCopyWithImpl<EnableDownloadButtonState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return isEnableDownloadButton(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isEnableDownloadButton != null) {
      return isEnableDownloadButton(isEnable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return isEnableDownloadButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isEnableDownloadButton != null) {
      return isEnableDownloadButton(this);
    }
    return orElse();
  }
}

abstract class EnableDownloadButtonState extends AddTorrentState {
  const EnableDownloadButtonState._() : super._();
  const factory EnableDownloadButtonState(bool isEnable) =
      _$EnableDownloadButtonState;

  bool get isEnable;
  @JsonKey(ignore: true)
  $EnableDownloadButtonStateCopyWith<EnableDownloadButtonState> get copyWith;
}

/// @nodoc
abstract class $FileSelectedStateCopyWith<$Res> {
  factory $FileSelectedStateCopyWith(
          FileSelectedState value, $Res Function(FileSelectedState) then) =
      _$FileSelectedStateCopyWithImpl<$Res>;
  $Res call({String selectedFiles});
}

/// @nodoc
class _$FileSelectedStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $FileSelectedStateCopyWith<$Res> {
  _$FileSelectedStateCopyWithImpl(
      FileSelectedState _value, $Res Function(FileSelectedState) _then)
      : super(_value, (v) => _then(v as FileSelectedState));

  @override
  FileSelectedState get _value => super._value as FileSelectedState;

  @override
  $Res call({
    Object selectedFiles = freezed,
  }) {
    return _then(FileSelectedState(
      selectedFiles == freezed ? _value.selectedFiles : selectedFiles as String,
    ));
  }
}

/// @nodoc
class _$FileSelectedState extends FileSelectedState {
  const _$FileSelectedState(this.selectedFiles)
      : assert(selectedFiles != null),
        super._();

  @override
  final String selectedFiles;

  @override
  String toString() {
    return 'AddTorrentState.fileSelected(selectedFiles: $selectedFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FileSelectedState &&
            (identical(other.selectedFiles, selectedFiles) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFiles, selectedFiles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedFiles);

  @JsonKey(ignore: true)
  @override
  $FileSelectedStateCopyWith<FileSelectedState> get copyWith =>
      _$FileSelectedStateCopyWithImpl<FileSelectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return fileSelected(selectedFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileSelected != null) {
      return fileSelected(selectedFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return fileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fileSelected != null) {
      return fileSelected(this);
    }
    return orElse();
  }
}

abstract class FileSelectedState extends AddTorrentState {
  const FileSelectedState._() : super._();
  const factory FileSelectedState(String selectedFiles) = _$FileSelectedState;

  String get selectedFiles;
  @JsonKey(ignore: true)
  $FileSelectedStateCopyWith<FileSelectedState> get copyWith;
}

/// @nodoc
abstract class $AddTorrentSuccessStateCopyWith<$Res> {
  factory $AddTorrentSuccessStateCopyWith(AddTorrentSuccessState value,
          $Res Function(AddTorrentSuccessState) then) =
      _$AddTorrentSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddTorrentSuccessStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $AddTorrentSuccessStateCopyWith<$Res> {
  _$AddTorrentSuccessStateCopyWithImpl(AddTorrentSuccessState _value,
      $Res Function(AddTorrentSuccessState) _then)
      : super(_value, (v) => _then(v as AddTorrentSuccessState));

  @override
  AddTorrentSuccessState get _value => super._value as AddTorrentSuccessState;
}

/// @nodoc
class _$AddTorrentSuccessState extends AddTorrentSuccessState {
  const _$AddTorrentSuccessState() : super._();

  @override
  String toString() {
    return 'AddTorrentState.addTorrentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddTorrentSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return addTorrentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTorrentSuccess != null) {
      return addTorrentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return addTorrentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTorrentSuccess != null) {
      return addTorrentSuccess(this);
    }
    return orElse();
  }
}

abstract class AddTorrentSuccessState extends AddTorrentState {
  const AddTorrentSuccessState._() : super._();
  const factory AddTorrentSuccessState() = _$AddTorrentSuccessState;
}

/// @nodoc
abstract class $ShowDefaultSavePathStateCopyWith<$Res> {
  factory $ShowDefaultSavePathStateCopyWith(ShowDefaultSavePathState value,
          $Res Function(ShowDefaultSavePathState) then) =
      _$ShowDefaultSavePathStateCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$ShowDefaultSavePathStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $ShowDefaultSavePathStateCopyWith<$Res> {
  _$ShowDefaultSavePathStateCopyWithImpl(ShowDefaultSavePathState _value,
      $Res Function(ShowDefaultSavePathState) _then)
      : super(_value, (v) => _then(v as ShowDefaultSavePathState));

  @override
  ShowDefaultSavePathState get _value =>
      super._value as ShowDefaultSavePathState;

  @override
  $Res call({
    Object path = freezed,
  }) {
    return _then(ShowDefaultSavePathState(
      path == freezed ? _value.path : path as String,
    ));
  }
}

/// @nodoc
class _$ShowDefaultSavePathState extends ShowDefaultSavePathState {
  const _$ShowDefaultSavePathState(this.path)
      : assert(path != null),
        super._();

  @override
  final String path;

  @override
  String toString() {
    return 'AddTorrentState.showDefaultSavePath(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowDefaultSavePathState &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $ShowDefaultSavePathStateCopyWith<ShowDefaultSavePathState> get copyWith =>
      _$ShowDefaultSavePathStateCopyWithImpl<ShowDefaultSavePathState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return showDefaultSavePath(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showDefaultSavePath != null) {
      return showDefaultSavePath(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return showDefaultSavePath(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showDefaultSavePath != null) {
      return showDefaultSavePath(this);
    }
    return orElse();
  }
}

abstract class ShowDefaultSavePathState extends AddTorrentState {
  const ShowDefaultSavePathState._() : super._();
  const factory ShowDefaultSavePathState(String path) =
      _$ShowDefaultSavePathState;

  String get path;
  @JsonKey(ignore: true)
  $ShowDefaultSavePathStateCopyWith<ShowDefaultSavePathState> get copyWith;
}

/// @nodoc
abstract class $SetDownloadUrlStateCopyWith<$Res> {
  factory $SetDownloadUrlStateCopyWith(
          SetDownloadUrlState value, $Res Function(SetDownloadUrlState) then) =
      _$SetDownloadUrlStateCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$SetDownloadUrlStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $SetDownloadUrlStateCopyWith<$Res> {
  _$SetDownloadUrlStateCopyWithImpl(
      SetDownloadUrlState _value, $Res Function(SetDownloadUrlState) _then)
      : super(_value, (v) => _then(v as SetDownloadUrlState));

  @override
  SetDownloadUrlState get _value => super._value as SetDownloadUrlState;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(SetDownloadUrlState(
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$SetDownloadUrlState extends SetDownloadUrlState {
  const _$SetDownloadUrlState(this.url)
      : assert(url != null),
        super._();

  @override
  final String url;

  @override
  String toString() {
    return 'AddTorrentState.setDownloadUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetDownloadUrlState &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $SetDownloadUrlStateCopyWith<SetDownloadUrlState> get copyWith =>
      _$SetDownloadUrlStateCopyWithImpl<SetDownloadUrlState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult showError(String message),
    @required TResult switchInputType(bool isFileSelected),
    @required TResult isEnableDownloadButton(bool isEnable),
    @required TResult fileSelected(String selectedFiles),
    @required TResult addTorrentSuccess(),
    @required TResult showDefaultSavePath(String path),
    @required TResult setDownloadUrl(String url),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return setDownloadUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult showError(String message),
    TResult switchInputType(bool isFileSelected),
    TResult isEnableDownloadButton(bool isEnable),
    TResult fileSelected(String selectedFiles),
    TResult addTorrentSuccess(),
    TResult showDefaultSavePath(String path),
    TResult setDownloadUrl(String url),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setDownloadUrl != null) {
      return setDownloadUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAddTorrentState value),
    @required TResult showError(ShowErrorState value),
    @required TResult switchInputType(SwitchInputTypeState value),
    @required TResult isEnableDownloadButton(EnableDownloadButtonState value),
    @required TResult fileSelected(FileSelectedState value),
    @required TResult addTorrentSuccess(AddTorrentSuccessState value),
    @required TResult showDefaultSavePath(ShowDefaultSavePathState value),
    @required TResult setDownloadUrl(SetDownloadUrlState value),
  }) {
    assert(initial != null);
    assert(showError != null);
    assert(switchInputType != null);
    assert(isEnableDownloadButton != null);
    assert(fileSelected != null);
    assert(addTorrentSuccess != null);
    assert(showDefaultSavePath != null);
    assert(setDownloadUrl != null);
    return setDownloadUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAddTorrentState value),
    TResult showError(ShowErrorState value),
    TResult switchInputType(SwitchInputTypeState value),
    TResult isEnableDownloadButton(EnableDownloadButtonState value),
    TResult fileSelected(FileSelectedState value),
    TResult addTorrentSuccess(AddTorrentSuccessState value),
    TResult showDefaultSavePath(ShowDefaultSavePathState value),
    TResult setDownloadUrl(SetDownloadUrlState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setDownloadUrl != null) {
      return setDownloadUrl(this);
    }
    return orElse();
  }
}

abstract class SetDownloadUrlState extends AddTorrentState {
  const SetDownloadUrlState._() : super._();
  const factory SetDownloadUrlState(String url) = _$SetDownloadUrlState;

  String get url;
  @JsonKey(ignore: true)
  $SetDownloadUrlStateCopyWith<SetDownloadUrlState> get copyWith;
}
