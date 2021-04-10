// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_torrent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddTorrentEventTearOff {
  const _$AddTorrentEventTearOff();

  SwitchInputSourceEvent onSwitchInputSource(bool isFileSourceSelected) {
    return SwitchInputSourceEvent(
      isFileSourceSelected,
    );
  }

  ChoiceTorrentFileEvent choiceTorrentFile() {
    return const ChoiceTorrentFileEvent();
  }

  StartDownloadEvent startDownload(PrefOptions options) {
    return StartDownloadEvent(
      options,
    );
  }

  ChangeUrlEvent onChangeUrl(String newValue) {
    return ChangeUrlEvent(
      newValue,
    );
  }

  CheckDownloadFolderEvent checkDownloadFolder() {
    return const CheckDownloadFolderEvent();
  }

  SelectArgUri selectArgUri() {
    return const SelectArgUri();
  }

  LoadSetupEvent loadSetup() {
    return const LoadSetupEvent();
  }

  CheckArgEvent onCheckArg(AddTorrentArg arg) {
    return CheckArgEvent(
      arg,
    );
  }

  UpdateOptionsEvent updateOptions(PrefOptions newValue) {
    return UpdateOptionsEvent(
      newValue,
    );
  }
}

/// @nodoc
const $AddTorrentEvent = _$AddTorrentEventTearOff();

/// @nodoc
mixin _$AddTorrentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? isFileSourceSelected = freezed,
  }) {
    return _then(SwitchInputSourceEvent(
      isFileSourceSelected == freezed
          ? _value.isFileSourceSelected
          : isFileSourceSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$SwitchInputSourceEvent extends SwitchInputSourceEvent {
  const _$SwitchInputSourceEvent(this.isFileSourceSelected) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return onSwitchInputSource(isFileSourceSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (onSwitchInputSource != null) {
      return onSwitchInputSource(isFileSourceSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return onSwitchInputSource(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (onSwitchInputSource != null) {
      return onSwitchInputSource(this);
    }
    return orElse();
  }
}

abstract class SwitchInputSourceEvent extends AddTorrentEvent {
  const factory SwitchInputSourceEvent(bool isFileSourceSelected) =
      _$SwitchInputSourceEvent;

  const SwitchInputSourceEvent._() : super._();

  bool get isFileSourceSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitchInputSourceEventCopyWith<SwitchInputSourceEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return choiceTorrentFile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (choiceTorrentFile != null) {
      return choiceTorrentFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return choiceTorrentFile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (choiceTorrentFile != null) {
      return choiceTorrentFile(this);
    }
    return orElse();
  }
}

abstract class ChoiceTorrentFileEvent extends AddTorrentEvent {
  const factory ChoiceTorrentFileEvent() = _$ChoiceTorrentFileEvent;

  const ChoiceTorrentFileEvent._() : super._();
}

/// @nodoc
abstract class $StartDownloadEventCopyWith<$Res> {
  factory $StartDownloadEventCopyWith(
          StartDownloadEvent value, $Res Function(StartDownloadEvent) then) =
      _$StartDownloadEventCopyWithImpl<$Res>;

  $Res call({PrefOptions options});
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
    Object? options = freezed,
  }) {
    return _then(StartDownloadEvent(
      options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as PrefOptions,
    ));
  }
}

/// @nodoc
class _$StartDownloadEvent extends StartDownloadEvent {
  const _$StartDownloadEvent(this.options) : super._();

  @override
  final PrefOptions options;

  @override
  String toString() {
    return 'AddTorrentEvent.startDownload(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartDownloadEvent &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(options);

  @JsonKey(ignore: true)
  @override
  $StartDownloadEventCopyWith<StartDownloadEvent> get copyWith =>
      _$StartDownloadEventCopyWithImpl<StartDownloadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return startDownload(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (startDownload != null) {
      return startDownload(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return startDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (startDownload != null) {
      return startDownload(this);
    }
    return orElse();
  }
}

abstract class StartDownloadEvent extends AddTorrentEvent {
  const factory StartDownloadEvent(PrefOptions options) = _$StartDownloadEvent;

  const StartDownloadEvent._() : super._();

  PrefOptions get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartDownloadEventCopyWith<StartDownloadEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? newValue = freezed,
  }) {
    return _then(ChangeUrlEvent(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ChangeUrlEvent extends ChangeUrlEvent {
  const _$ChangeUrlEvent(this.newValue) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return onChangeUrl(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (onChangeUrl != null) {
      return onChangeUrl(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return onChangeUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (onChangeUrl != null) {
      return onChangeUrl(this);
    }
    return orElse();
  }
}

abstract class ChangeUrlEvent extends AddTorrentEvent {
  const factory ChangeUrlEvent(String newValue) = _$ChangeUrlEvent;

  const ChangeUrlEvent._() : super._();

  String get newValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeUrlEventCopyWith<ChangeUrlEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return checkDownloadFolder();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (checkDownloadFolder != null) {
      return checkDownloadFolder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return checkDownloadFolder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (checkDownloadFolder != null) {
      return checkDownloadFolder(this);
    }
    return orElse();
  }
}

abstract class CheckDownloadFolderEvent extends AddTorrentEvent {
  const factory CheckDownloadFolderEvent() = _$CheckDownloadFolderEvent;

  const CheckDownloadFolderEvent._() : super._();
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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return selectArgUri();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (selectArgUri != null) {
      return selectArgUri();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return selectArgUri(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (selectArgUri != null) {
      return selectArgUri(this);
    }
    return orElse();
  }
}

abstract class SelectArgUri extends AddTorrentEvent {
  const factory SelectArgUri() = _$SelectArgUri;

  const SelectArgUri._() : super._();
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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return loadSetup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (loadSetup != null) {
      return loadSetup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return loadSetup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (loadSetup != null) {
      return loadSetup(this);
    }
    return orElse();
  }
}

abstract class LoadSetupEvent extends AddTorrentEvent {
  const factory LoadSetupEvent() = _$LoadSetupEvent;

  const LoadSetupEvent._() : super._();
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
    Object? arg = freezed,
  }) {
    return _then(CheckArgEvent(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as AddTorrentArg,
    ));
  }
}

/// @nodoc
class _$CheckArgEvent extends CheckArgEvent {
  const _$CheckArgEvent(this.arg) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return onCheckArg(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (onCheckArg != null) {
      return onCheckArg(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return onCheckArg(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (onCheckArg != null) {
      return onCheckArg(this);
    }
    return orElse();
  }
}

abstract class CheckArgEvent extends AddTorrentEvent {
  const factory CheckArgEvent(AddTorrentArg arg) = _$CheckArgEvent;

  const CheckArgEvent._() : super._();

  AddTorrentArg get arg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckArgEventCopyWith<CheckArgEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOptionsEventCopyWith<$Res> {
  factory $UpdateOptionsEventCopyWith(
          UpdateOptionsEvent value, $Res Function(UpdateOptionsEvent) then) =
      _$UpdateOptionsEventCopyWithImpl<$Res>;

  $Res call({PrefOptions newValue});
}

/// @nodoc
class _$UpdateOptionsEventCopyWithImpl<$Res>
    extends _$AddTorrentEventCopyWithImpl<$Res>
    implements $UpdateOptionsEventCopyWith<$Res> {
  _$UpdateOptionsEventCopyWithImpl(
      UpdateOptionsEvent _value, $Res Function(UpdateOptionsEvent) _then)
      : super(_value, (v) => _then(v as UpdateOptionsEvent));

  @override
  UpdateOptionsEvent get _value => super._value as UpdateOptionsEvent;

  @override
  $Res call({
    Object? newValue = freezed,
  }) {
    return _then(UpdateOptionsEvent(
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as PrefOptions,
    ));
  }
}

/// @nodoc
class _$UpdateOptionsEvent extends UpdateOptionsEvent {
  const _$UpdateOptionsEvent(this.newValue) : super._();

  @override
  final PrefOptions newValue;

  @override
  String toString() {
    return 'AddTorrentEvent.updateOptions(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateOptionsEvent &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newValue);

  @JsonKey(ignore: true)
  @override
  $UpdateOptionsEventCopyWith<UpdateOptionsEvent> get copyWith =>
      _$UpdateOptionsEventCopyWithImpl<UpdateOptionsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFileSourceSelected) onSwitchInputSource,
    required TResult Function() choiceTorrentFile,
    required TResult Function(PrefOptions options) startDownload,
    required TResult Function(String newValue) onChangeUrl,
    required TResult Function() checkDownloadFolder,
    required TResult Function() selectArgUri,
    required TResult Function() loadSetup,
    required TResult Function(AddTorrentArg arg) onCheckArg,
    required TResult Function(PrefOptions newValue) updateOptions,
  }) {
    return updateOptions(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFileSourceSelected)? onSwitchInputSource,
    TResult Function()? choiceTorrentFile,
    TResult Function(PrefOptions options)? startDownload,
    TResult Function(String newValue)? onChangeUrl,
    TResult Function()? checkDownloadFolder,
    TResult Function()? selectArgUri,
    TResult Function()? loadSetup,
    TResult Function(AddTorrentArg arg)? onCheckArg,
    TResult Function(PrefOptions newValue)? updateOptions,
    required TResult orElse(),
  }) {
    if (updateOptions != null) {
      return updateOptions(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchInputSourceEvent value) onSwitchInputSource,
    required TResult Function(ChoiceTorrentFileEvent value) choiceTorrentFile,
    required TResult Function(StartDownloadEvent value) startDownload,
    required TResult Function(ChangeUrlEvent value) onChangeUrl,
    required TResult Function(CheckDownloadFolderEvent value)
        checkDownloadFolder,
    required TResult Function(SelectArgUri value) selectArgUri,
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(CheckArgEvent value) onCheckArg,
    required TResult Function(UpdateOptionsEvent value) updateOptions,
  }) {
    return updateOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchInputSourceEvent value)? onSwitchInputSource,
    TResult Function(ChoiceTorrentFileEvent value)? choiceTorrentFile,
    TResult Function(StartDownloadEvent value)? startDownload,
    TResult Function(ChangeUrlEvent value)? onChangeUrl,
    TResult Function(CheckDownloadFolderEvent value)? checkDownloadFolder,
    TResult Function(SelectArgUri value)? selectArgUri,
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(CheckArgEvent value)? onCheckArg,
    TResult Function(UpdateOptionsEvent value)? updateOptions,
    required TResult orElse(),
  }) {
    if (updateOptions != null) {
      return updateOptions(this);
    }
    return orElse();
  }
}

abstract class UpdateOptionsEvent extends AddTorrentEvent {
  const factory UpdateOptionsEvent(PrefOptions newValue) = _$UpdateOptionsEvent;

  const UpdateOptionsEvent._() : super._();

  PrefOptions get newValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateOptionsEventCopyWith<UpdateOptionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddTorrentStateTearOff {
  const _$AddTorrentStateTearOff();

  InitialAddTorrentState initial() {
    return const InitialAddTorrentState();
  }

  ShowErrorState showError(String message) {
    return ShowErrorState(
      message,
    );
  }

  SwitchInputTypeState switchInputType(bool isFileSelected) {
    return SwitchInputTypeState(
      isFileSelected,
    );
  }

  EnableDownloadButtonState isEnableDownloadButton(bool isEnable) {
    return EnableDownloadButtonState(
      isEnable,
    );
  }

  FileSelectedState fileSelected(String selectedFiles) {
    return FileSelectedState(
      selectedFiles,
    );
  }

  AddTorrentSuccessState addTorrentSuccess() {
    return const AddTorrentSuccessState();
  }

  ShowPrefOptionsState showPrefsOptions(PrefOptions options) {
    return ShowPrefOptionsState(
      options,
    );
  }

  SetDownloadUrlState setDownloadUrl(String url) {
    return SetDownloadUrlState(
      url,
    );
  }
}

/// @nodoc
const $AddTorrentState = _$AddTorrentStateTearOff();

/// @nodoc
mixin _$AddTorrentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAddTorrentState extends AddTorrentState {
  const factory InitialAddTorrentState() = _$InitialAddTorrentState;

  const InitialAddTorrentState._() : super._();
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
    Object? message = freezed,
  }) {
    return _then(ShowErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ShowErrorState extends ShowErrorState {
  const _$ShowErrorState(this.message) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return showError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class ShowErrorState extends AddTorrentState {
  const factory ShowErrorState(String message) = _$ShowErrorState;

  const ShowErrorState._() : super._();

  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowErrorStateCopyWith<ShowErrorState> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? isFileSelected = freezed,
  }) {
    return _then(SwitchInputTypeState(
      isFileSelected == freezed
          ? _value.isFileSelected
          : isFileSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$SwitchInputTypeState extends SwitchInputTypeState {
  const _$SwitchInputTypeState(this.isFileSelected) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return switchInputType(isFileSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (switchInputType != null) {
      return switchInputType(isFileSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return switchInputType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (switchInputType != null) {
      return switchInputType(this);
    }
    return orElse();
  }
}

abstract class SwitchInputTypeState extends AddTorrentState {
  const factory SwitchInputTypeState(bool isFileSelected) =
      _$SwitchInputTypeState;

  const SwitchInputTypeState._() : super._();

  bool get isFileSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwitchInputTypeStateCopyWith<SwitchInputTypeState> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? isEnable = freezed,
  }) {
    return _then(EnableDownloadButtonState(
      isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$EnableDownloadButtonState extends EnableDownloadButtonState {
  const _$EnableDownloadButtonState(this.isEnable) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return isEnableDownloadButton(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (isEnableDownloadButton != null) {
      return isEnableDownloadButton(isEnable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return isEnableDownloadButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (isEnableDownloadButton != null) {
      return isEnableDownloadButton(this);
    }
    return orElse();
  }
}

abstract class EnableDownloadButtonState extends AddTorrentState {
  const factory EnableDownloadButtonState(bool isEnable) =
      _$EnableDownloadButtonState;

  const EnableDownloadButtonState._() : super._();

  bool get isEnable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnableDownloadButtonStateCopyWith<EnableDownloadButtonState> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? selectedFiles = freezed,
  }) {
    return _then(FileSelectedState(
      selectedFiles == freezed
          ? _value.selectedFiles
          : selectedFiles // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$FileSelectedState extends FileSelectedState {
  const _$FileSelectedState(this.selectedFiles) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return fileSelected(selectedFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (fileSelected != null) {
      return fileSelected(selectedFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return fileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (fileSelected != null) {
      return fileSelected(this);
    }
    return orElse();
  }
}

abstract class FileSelectedState extends AddTorrentState {
  const factory FileSelectedState(String selectedFiles) = _$FileSelectedState;

  const FileSelectedState._() : super._();

  String get selectedFiles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileSelectedStateCopyWith<FileSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return addTorrentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (addTorrentSuccess != null) {
      return addTorrentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return addTorrentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (addTorrentSuccess != null) {
      return addTorrentSuccess(this);
    }
    return orElse();
  }
}

abstract class AddTorrentSuccessState extends AddTorrentState {
  const factory AddTorrentSuccessState() = _$AddTorrentSuccessState;

  const AddTorrentSuccessState._() : super._();
}

/// @nodoc
abstract class $ShowPrefOptionsStateCopyWith<$Res> {
  factory $ShowPrefOptionsStateCopyWith(ShowPrefOptionsState value,
          $Res Function(ShowPrefOptionsState) then) =
      _$ShowPrefOptionsStateCopyWithImpl<$Res>;

  $Res call({PrefOptions options});
}

/// @nodoc
class _$ShowPrefOptionsStateCopyWithImpl<$Res>
    extends _$AddTorrentStateCopyWithImpl<$Res>
    implements $ShowPrefOptionsStateCopyWith<$Res> {
  _$ShowPrefOptionsStateCopyWithImpl(
      ShowPrefOptionsState _value, $Res Function(ShowPrefOptionsState) _then)
      : super(_value, (v) => _then(v as ShowPrefOptionsState));

  @override
  ShowPrefOptionsState get _value => super._value as ShowPrefOptionsState;

  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(ShowPrefOptionsState(
      options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as PrefOptions,
    ));
  }
}

/// @nodoc
class _$ShowPrefOptionsState extends ShowPrefOptionsState {
  const _$ShowPrefOptionsState(this.options) : super._();

  @override
  final PrefOptions options;

  @override
  String toString() {
    return 'AddTorrentState.showPrefsOptions(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowPrefOptionsState &&
            (identical(other.options, options) ||
                const DeepCollectionEquality().equals(other.options, options)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(options);

  @JsonKey(ignore: true)
  @override
  $ShowPrefOptionsStateCopyWith<ShowPrefOptionsState> get copyWith =>
      _$ShowPrefOptionsStateCopyWithImpl<ShowPrefOptionsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return showPrefsOptions(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (showPrefsOptions != null) {
      return showPrefsOptions(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return showPrefsOptions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (showPrefsOptions != null) {
      return showPrefsOptions(this);
    }
    return orElse();
  }
}

abstract class ShowPrefOptionsState extends AddTorrentState {
  const factory ShowPrefOptionsState(PrefOptions options) =
      _$ShowPrefOptionsState;

  const ShowPrefOptionsState._() : super._();

  PrefOptions get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowPrefOptionsStateCopyWith<ShowPrefOptionsState> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? url = freezed,
  }) {
    return _then(SetDownloadUrlState(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$SetDownloadUrlState extends SetDownloadUrlState {
  const _$SetDownloadUrlState(this.url) : super._();

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) showError,
    required TResult Function(bool isFileSelected) switchInputType,
    required TResult Function(bool isEnable) isEnableDownloadButton,
    required TResult Function(String selectedFiles) fileSelected,
    required TResult Function() addTorrentSuccess,
    required TResult Function(PrefOptions options) showPrefsOptions,
    required TResult Function(String url) setDownloadUrl,
  }) {
    return setDownloadUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? showError,
    TResult Function(bool isFileSelected)? switchInputType,
    TResult Function(bool isEnable)? isEnableDownloadButton,
    TResult Function(String selectedFiles)? fileSelected,
    TResult Function()? addTorrentSuccess,
    TResult Function(PrefOptions options)? showPrefsOptions,
    TResult Function(String url)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (setDownloadUrl != null) {
      return setDownloadUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddTorrentState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(SwitchInputTypeState value) switchInputType,
    required TResult Function(EnableDownloadButtonState value)
        isEnableDownloadButton,
    required TResult Function(FileSelectedState value) fileSelected,
    required TResult Function(AddTorrentSuccessState value) addTorrentSuccess,
    required TResult Function(ShowPrefOptionsState value) showPrefsOptions,
    required TResult Function(SetDownloadUrlState value) setDownloadUrl,
  }) {
    return setDownloadUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddTorrentState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(SwitchInputTypeState value)? switchInputType,
    TResult Function(EnableDownloadButtonState value)? isEnableDownloadButton,
    TResult Function(FileSelectedState value)? fileSelected,
    TResult Function(AddTorrentSuccessState value)? addTorrentSuccess,
    TResult Function(ShowPrefOptionsState value)? showPrefsOptions,
    TResult Function(SetDownloadUrlState value)? setDownloadUrl,
    required TResult orElse(),
  }) {
    if (setDownloadUrl != null) {
      return setDownloadUrl(this);
    }
    return orElse();
  }
}

abstract class SetDownloadUrlState extends AddTorrentState {
  const factory SetDownloadUrlState(String url) = _$SetDownloadUrlState;

  const SetDownloadUrlState._() : super._();

  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetDownloadUrlStateCopyWith<SetDownloadUrlState> get copyWith =>
      throw _privateConstructorUsedError;
}
