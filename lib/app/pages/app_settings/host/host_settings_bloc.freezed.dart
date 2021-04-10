// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'host_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HostSettingsEventTearOff {
  const _$HostSettingsEventTearOff();

  LoadSetupEvent loadSetup() {
    return const LoadSetupEvent();
  }

  SavePrefEvent savePref(ServerPreferences prefs) {
    return SavePrefEvent(
      prefs,
    );
  }
}

/// @nodoc
const $HostSettingsEvent = _$HostSettingsEventTearOff();

/// @nodoc
mixin _$HostSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSetup,
    required TResult Function(ServerPreferences prefs) savePref,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(ServerPreferences prefs)? savePref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(SavePrefEvent value) savePref,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SavePrefEvent value)? savePref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostSettingsEventCopyWith<$Res> {
  factory $HostSettingsEventCopyWith(
          HostSettingsEvent value, $Res Function(HostSettingsEvent) then) =
      _$HostSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HostSettingsEventCopyWithImpl<$Res>
    implements $HostSettingsEventCopyWith<$Res> {
  _$HostSettingsEventCopyWithImpl(this._value, this._then);

  final HostSettingsEvent _value;

  // ignore: unused_field
  final $Res Function(HostSettingsEvent) _then;
}

/// @nodoc
abstract class $LoadSetupEventCopyWith<$Res> {
  factory $LoadSetupEventCopyWith(
          LoadSetupEvent value, $Res Function(LoadSetupEvent) then) =
      _$LoadSetupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadSetupEventCopyWithImpl<$Res>
    extends _$HostSettingsEventCopyWithImpl<$Res>
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
    return 'HostSettingsEvent.loadSetup()';
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
    required TResult Function() loadSetup,
    required TResult Function(ServerPreferences prefs) savePref,
  }) {
    return loadSetup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(ServerPreferences prefs)? savePref,
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
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(SavePrefEvent value) savePref,
  }) {
    return loadSetup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SavePrefEvent value)? savePref,
    required TResult orElse(),
  }) {
    if (loadSetup != null) {
      return loadSetup(this);
    }
    return orElse();
  }
}

abstract class LoadSetupEvent extends HostSettingsEvent {
  const factory LoadSetupEvent() = _$LoadSetupEvent;

  const LoadSetupEvent._() : super._();
}

/// @nodoc
abstract class $SavePrefEventCopyWith<$Res> {
  factory $SavePrefEventCopyWith(
          SavePrefEvent value, $Res Function(SavePrefEvent) then) =
      _$SavePrefEventCopyWithImpl<$Res>;

  $Res call({ServerPreferences prefs});
}

/// @nodoc
class _$SavePrefEventCopyWithImpl<$Res>
    extends _$HostSettingsEventCopyWithImpl<$Res>
    implements $SavePrefEventCopyWith<$Res> {
  _$SavePrefEventCopyWithImpl(
      SavePrefEvent _value, $Res Function(SavePrefEvent) _then)
      : super(_value, (v) => _then(v as SavePrefEvent));

  @override
  SavePrefEvent get _value => super._value as SavePrefEvent;

  @override
  $Res call({
    Object? prefs = freezed,
  }) {
    return _then(SavePrefEvent(
      prefs == freezed
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as ServerPreferences,
    ));
  }
}

/// @nodoc
class _$SavePrefEvent extends SavePrefEvent {
  const _$SavePrefEvent(this.prefs) : super._();

  @override
  final ServerPreferences prefs;

  @override
  String toString() {
    return 'HostSettingsEvent.savePref(prefs: $prefs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavePrefEvent &&
            (identical(other.prefs, prefs) ||
                const DeepCollectionEquality().equals(other.prefs, prefs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prefs);

  @JsonKey(ignore: true)
  @override
  $SavePrefEventCopyWith<SavePrefEvent> get copyWith =>
      _$SavePrefEventCopyWithImpl<SavePrefEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSetup,
    required TResult Function(ServerPreferences prefs) savePref,
  }) {
    return savePref(prefs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(ServerPreferences prefs)? savePref,
    required TResult orElse(),
  }) {
    if (savePref != null) {
      return savePref(prefs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(SavePrefEvent value) savePref,
  }) {
    return savePref(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SavePrefEvent value)? savePref,
    required TResult orElse(),
  }) {
    if (savePref != null) {
      return savePref(this);
    }
    return orElse();
  }
}

abstract class SavePrefEvent extends HostSettingsEvent {
  const factory SavePrefEvent(ServerPreferences prefs) = _$SavePrefEvent;

  const SavePrefEvent._() : super._();

  ServerPreferences get prefs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavePrefEventCopyWith<SavePrefEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HostSettingsStateTearOff {
  const _$HostSettingsStateTearOff();

  InitialHostSettingsState initial() {
    return const InitialHostSettingsState();
  }

  ShowErrorState showError(String msg) {
    return ShowErrorState(
      msg,
    );
  }

  ShowPreferencesState showPreferences(ServerPreferences prefs) {
    return ShowPreferencesState(
      prefs,
    );
  }

  ShowToastState showToast(String msg) {
    return ShowToastState(
      msg,
    );
  }
}

/// @nodoc
const $HostSettingsState = _$HostSettingsStateTearOff();

/// @nodoc
mixin _$HostSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) showError,
    required TResult Function(ServerPreferences prefs) showPreferences,
    required TResult Function(String msg) showToast,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? showError,
    TResult Function(ServerPreferences prefs)? showPreferences,
    TResult Function(String msg)? showToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHostSettingsState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(ShowPreferencesState value) showPreferences,
    required TResult Function(ShowToastState value) showToast,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHostSettingsState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(ShowPreferencesState value)? showPreferences,
    TResult Function(ShowToastState value)? showToast,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostSettingsStateCopyWith<$Res> {
  factory $HostSettingsStateCopyWith(
          HostSettingsState value, $Res Function(HostSettingsState) then) =
      _$HostSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HostSettingsStateCopyWithImpl<$Res>
    implements $HostSettingsStateCopyWith<$Res> {
  _$HostSettingsStateCopyWithImpl(this._value, this._then);

  final HostSettingsState _value;

  // ignore: unused_field
  final $Res Function(HostSettingsState) _then;
}

/// @nodoc
abstract class $InitialHostSettingsStateCopyWith<$Res> {
  factory $InitialHostSettingsStateCopyWith(InitialHostSettingsState value,
          $Res Function(InitialHostSettingsState) then) =
      _$InitialHostSettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialHostSettingsStateCopyWithImpl<$Res>
    extends _$HostSettingsStateCopyWithImpl<$Res>
    implements $InitialHostSettingsStateCopyWith<$Res> {
  _$InitialHostSettingsStateCopyWithImpl(InitialHostSettingsState _value,
      $Res Function(InitialHostSettingsState) _then)
      : super(_value, (v) => _then(v as InitialHostSettingsState));

  @override
  InitialHostSettingsState get _value =>
      super._value as InitialHostSettingsState;
}

/// @nodoc
class _$InitialHostSettingsState extends InitialHostSettingsState {
  const _$InitialHostSettingsState() : super._();

  @override
  String toString() {
    return 'HostSettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialHostSettingsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) showError,
    required TResult Function(ServerPreferences prefs) showPreferences,
    required TResult Function(String msg) showToast,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? showError,
    TResult Function(ServerPreferences prefs)? showPreferences,
    TResult Function(String msg)? showToast,
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
    required TResult Function(InitialHostSettingsState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(ShowPreferencesState value) showPreferences,
    required TResult Function(ShowToastState value) showToast,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHostSettingsState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(ShowPreferencesState value)? showPreferences,
    TResult Function(ShowToastState value)? showToast,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialHostSettingsState extends HostSettingsState {
  const factory InitialHostSettingsState() = _$InitialHostSettingsState;

  const InitialHostSettingsState._() : super._();
}

/// @nodoc
abstract class $ShowErrorStateCopyWith<$Res> {
  factory $ShowErrorStateCopyWith(
          ShowErrorState value, $Res Function(ShowErrorState) then) =
      _$ShowErrorStateCopyWithImpl<$Res>;

  $Res call({String msg});
}

/// @nodoc
class _$ShowErrorStateCopyWithImpl<$Res>
    extends _$HostSettingsStateCopyWithImpl<$Res>
    implements $ShowErrorStateCopyWith<$Res> {
  _$ShowErrorStateCopyWithImpl(
      ShowErrorState _value, $Res Function(ShowErrorState) _then)
      : super(_value, (v) => _then(v as ShowErrorState));

  @override
  ShowErrorState get _value => super._value as ShowErrorState;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(ShowErrorState(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ShowErrorState extends ShowErrorState {
  const _$ShowErrorState(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'HostSettingsState.showError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowErrorState &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  $ShowErrorStateCopyWith<ShowErrorState> get copyWith =>
      _$ShowErrorStateCopyWithImpl<ShowErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) showError,
    required TResult Function(ServerPreferences prefs) showPreferences,
    required TResult Function(String msg) showToast,
  }) {
    return showError(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? showError,
    TResult Function(ServerPreferences prefs)? showPreferences,
    TResult Function(String msg)? showToast,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHostSettingsState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(ShowPreferencesState value) showPreferences,
    required TResult Function(ShowToastState value) showToast,
  }) {
    return showError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHostSettingsState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(ShowPreferencesState value)? showPreferences,
    TResult Function(ShowToastState value)? showToast,
    required TResult orElse(),
  }) {
    if (showError != null) {
      return showError(this);
    }
    return orElse();
  }
}

abstract class ShowErrorState extends HostSettingsState {
  const factory ShowErrorState(String msg) = _$ShowErrorState;

  const ShowErrorState._() : super._();

  String get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowErrorStateCopyWith<ShowErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPreferencesStateCopyWith<$Res> {
  factory $ShowPreferencesStateCopyWith(ShowPreferencesState value,
          $Res Function(ShowPreferencesState) then) =
      _$ShowPreferencesStateCopyWithImpl<$Res>;

  $Res call({ServerPreferences prefs});
}

/// @nodoc
class _$ShowPreferencesStateCopyWithImpl<$Res>
    extends _$HostSettingsStateCopyWithImpl<$Res>
    implements $ShowPreferencesStateCopyWith<$Res> {
  _$ShowPreferencesStateCopyWithImpl(
      ShowPreferencesState _value, $Res Function(ShowPreferencesState) _then)
      : super(_value, (v) => _then(v as ShowPreferencesState));

  @override
  ShowPreferencesState get _value => super._value as ShowPreferencesState;

  @override
  $Res call({
    Object? prefs = freezed,
  }) {
    return _then(ShowPreferencesState(
      prefs == freezed
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as ServerPreferences,
    ));
  }
}

/// @nodoc
class _$ShowPreferencesState extends ShowPreferencesState {
  const _$ShowPreferencesState(this.prefs) : super._();

  @override
  final ServerPreferences prefs;

  @override
  String toString() {
    return 'HostSettingsState.showPreferences(prefs: $prefs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowPreferencesState &&
            (identical(other.prefs, prefs) ||
                const DeepCollectionEquality().equals(other.prefs, prefs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prefs);

  @JsonKey(ignore: true)
  @override
  $ShowPreferencesStateCopyWith<ShowPreferencesState> get copyWith =>
      _$ShowPreferencesStateCopyWithImpl<ShowPreferencesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) showError,
    required TResult Function(ServerPreferences prefs) showPreferences,
    required TResult Function(String msg) showToast,
  }) {
    return showPreferences(prefs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? showError,
    TResult Function(ServerPreferences prefs)? showPreferences,
    TResult Function(String msg)? showToast,
    required TResult orElse(),
  }) {
    if (showPreferences != null) {
      return showPreferences(prefs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHostSettingsState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(ShowPreferencesState value) showPreferences,
    required TResult Function(ShowToastState value) showToast,
  }) {
    return showPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHostSettingsState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(ShowPreferencesState value)? showPreferences,
    TResult Function(ShowToastState value)? showToast,
    required TResult orElse(),
  }) {
    if (showPreferences != null) {
      return showPreferences(this);
    }
    return orElse();
  }
}

abstract class ShowPreferencesState extends HostSettingsState {
  const factory ShowPreferencesState(ServerPreferences prefs) =
      _$ShowPreferencesState;

  const ShowPreferencesState._() : super._();

  ServerPreferences get prefs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowPreferencesStateCopyWith<ShowPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowToastStateCopyWith<$Res> {
  factory $ShowToastStateCopyWith(
          ShowToastState value, $Res Function(ShowToastState) then) =
      _$ShowToastStateCopyWithImpl<$Res>;

  $Res call({String msg});
}

/// @nodoc
class _$ShowToastStateCopyWithImpl<$Res>
    extends _$HostSettingsStateCopyWithImpl<$Res>
    implements $ShowToastStateCopyWith<$Res> {
  _$ShowToastStateCopyWithImpl(
      ShowToastState _value, $Res Function(ShowToastState) _then)
      : super(_value, (v) => _then(v as ShowToastState));

  @override
  ShowToastState get _value => super._value as ShowToastState;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(ShowToastState(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ShowToastState extends ShowToastState {
  const _$ShowToastState(this.msg) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'HostSettingsState.showToast(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowToastState &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  $ShowToastStateCopyWith<ShowToastState> get copyWith =>
      _$ShowToastStateCopyWithImpl<ShowToastState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String msg) showError,
    required TResult Function(ServerPreferences prefs) showPreferences,
    required TResult Function(String msg) showToast,
  }) {
    return showToast(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String msg)? showError,
    TResult Function(ServerPreferences prefs)? showPreferences,
    TResult Function(String msg)? showToast,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHostSettingsState value) initial,
    required TResult Function(ShowErrorState value) showError,
    required TResult Function(ShowPreferencesState value) showPreferences,
    required TResult Function(ShowToastState value) showToast,
  }) {
    return showToast(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHostSettingsState value)? initial,
    TResult Function(ShowErrorState value)? showError,
    TResult Function(ShowPreferencesState value)? showPreferences,
    TResult Function(ShowToastState value)? showToast,
    required TResult orElse(),
  }) {
    if (showToast != null) {
      return showToast(this);
    }
    return orElse();
  }
}

abstract class ShowToastState extends HostSettingsState {
  const factory ShowToastState(String msg) = _$ShowToastState;

  const ShowToastState._() : super._();

  String get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowToastStateCopyWith<ShowToastState> get copyWith =>
      throw _privateConstructorUsedError;
}
