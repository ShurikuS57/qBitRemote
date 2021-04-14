// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_prefs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppPrefsEventTearOff {
  const _$AppPrefsEventTearOff();

  LoadSetupEvent loadSetup() {
    return const LoadSetupEvent();
  }

  SaveAppPrefEvent saveAppPref(AppPrefs prefs) {
    return SaveAppPrefEvent(
      prefs,
    );
  }
}

/// @nodoc
const $AppPrefsEvent = _$AppPrefsEventTearOff();

/// @nodoc
mixin _$AppPrefsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSetup,
    required TResult Function(AppPrefs prefs) saveAppPref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(AppPrefs prefs)? saveAppPref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(SaveAppPrefEvent value) saveAppPref,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SaveAppPrefEvent value)? saveAppPref,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPrefsEventCopyWith<$Res> {
  factory $AppPrefsEventCopyWith(
          AppPrefsEvent value, $Res Function(AppPrefsEvent) then) =
      _$AppPrefsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppPrefsEventCopyWithImpl<$Res>
    implements $AppPrefsEventCopyWith<$Res> {
  _$AppPrefsEventCopyWithImpl(this._value, this._then);

  final AppPrefsEvent _value;
  // ignore: unused_field
  final $Res Function(AppPrefsEvent) _then;
}

/// @nodoc
abstract class $LoadSetupEventCopyWith<$Res> {
  factory $LoadSetupEventCopyWith(
          LoadSetupEvent value, $Res Function(LoadSetupEvent) then) =
      _$LoadSetupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadSetupEventCopyWithImpl<$Res>
    extends _$AppPrefsEventCopyWithImpl<$Res>
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
    return 'AppPrefsEvent.loadSetup()';
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
    required TResult Function(AppPrefs prefs) saveAppPref,
  }) {
    return loadSetup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(AppPrefs prefs)? saveAppPref,
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
    required TResult Function(SaveAppPrefEvent value) saveAppPref,
  }) {
    return loadSetup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SaveAppPrefEvent value)? saveAppPref,
    required TResult orElse(),
  }) {
    if (loadSetup != null) {
      return loadSetup(this);
    }
    return orElse();
  }
}

abstract class LoadSetupEvent extends AppPrefsEvent {
  const factory LoadSetupEvent() = _$LoadSetupEvent;
  const LoadSetupEvent._() : super._();
}

/// @nodoc
abstract class $SaveAppPrefEventCopyWith<$Res> {
  factory $SaveAppPrefEventCopyWith(
          SaveAppPrefEvent value, $Res Function(SaveAppPrefEvent) then) =
      _$SaveAppPrefEventCopyWithImpl<$Res>;
  $Res call({AppPrefs prefs});
}

/// @nodoc
class _$SaveAppPrefEventCopyWithImpl<$Res>
    extends _$AppPrefsEventCopyWithImpl<$Res>
    implements $SaveAppPrefEventCopyWith<$Res> {
  _$SaveAppPrefEventCopyWithImpl(
      SaveAppPrefEvent _value, $Res Function(SaveAppPrefEvent) _then)
      : super(_value, (v) => _then(v as SaveAppPrefEvent));

  @override
  SaveAppPrefEvent get _value => super._value as SaveAppPrefEvent;

  @override
  $Res call({
    Object? prefs = freezed,
  }) {
    return _then(SaveAppPrefEvent(
      prefs == freezed
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as AppPrefs,
    ));
  }
}

/// @nodoc
class _$SaveAppPrefEvent extends SaveAppPrefEvent {
  const _$SaveAppPrefEvent(this.prefs) : super._();

  @override
  final AppPrefs prefs;

  @override
  String toString() {
    return 'AppPrefsEvent.saveAppPref(prefs: $prefs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveAppPrefEvent &&
            (identical(other.prefs, prefs) ||
                const DeepCollectionEquality().equals(other.prefs, prefs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prefs);

  @JsonKey(ignore: true)
  @override
  $SaveAppPrefEventCopyWith<SaveAppPrefEvent> get copyWith =>
      _$SaveAppPrefEventCopyWithImpl<SaveAppPrefEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSetup,
    required TResult Function(AppPrefs prefs) saveAppPref,
  }) {
    return saveAppPref(prefs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(AppPrefs prefs)? saveAppPref,
    required TResult orElse(),
  }) {
    if (saveAppPref != null) {
      return saveAppPref(prefs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSetupEvent value) loadSetup,
    required TResult Function(SaveAppPrefEvent value) saveAppPref,
  }) {
    return saveAppPref(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SaveAppPrefEvent value)? saveAppPref,
    required TResult orElse(),
  }) {
    if (saveAppPref != null) {
      return saveAppPref(this);
    }
    return orElse();
  }
}

abstract class SaveAppPrefEvent extends AppPrefsEvent {
  const factory SaveAppPrefEvent(AppPrefs prefs) = _$SaveAppPrefEvent;
  const SaveAppPrefEvent._() : super._();

  AppPrefs get prefs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveAppPrefEventCopyWith<SaveAppPrefEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppPrefsStateTearOff {
  const _$AppPrefsStateTearOff();

  InitialLAppPrefsState initial() {
    return const InitialLAppPrefsState();
  }

  ShowSettingsData showSettingsData(AppPrefs prefs) {
    return ShowSettingsData(
      prefs,
    );
  }
}

/// @nodoc
const $AppPrefsState = _$AppPrefsStateTearOff();

/// @nodoc
mixin _$AppPrefsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppPrefs prefs) showSettingsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppPrefs prefs)? showSettingsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLAppPrefsState value) initial,
    required TResult Function(ShowSettingsData value) showSettingsData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLAppPrefsState value)? initial,
    TResult Function(ShowSettingsData value)? showSettingsData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPrefsStateCopyWith<$Res> {
  factory $AppPrefsStateCopyWith(
          AppPrefsState value, $Res Function(AppPrefsState) then) =
      _$AppPrefsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppPrefsStateCopyWithImpl<$Res>
    implements $AppPrefsStateCopyWith<$Res> {
  _$AppPrefsStateCopyWithImpl(this._value, this._then);

  final AppPrefsState _value;
  // ignore: unused_field
  final $Res Function(AppPrefsState) _then;
}

/// @nodoc
abstract class $InitialLAppPrefsStateCopyWith<$Res> {
  factory $InitialLAppPrefsStateCopyWith(InitialLAppPrefsState value,
          $Res Function(InitialLAppPrefsState) then) =
      _$InitialLAppPrefsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialLAppPrefsStateCopyWithImpl<$Res>
    extends _$AppPrefsStateCopyWithImpl<$Res>
    implements $InitialLAppPrefsStateCopyWith<$Res> {
  _$InitialLAppPrefsStateCopyWithImpl(
      InitialLAppPrefsState _value, $Res Function(InitialLAppPrefsState) _then)
      : super(_value, (v) => _then(v as InitialLAppPrefsState));

  @override
  InitialLAppPrefsState get _value => super._value as InitialLAppPrefsState;
}

/// @nodoc
class _$InitialLAppPrefsState extends InitialLAppPrefsState {
  const _$InitialLAppPrefsState() : super._();

  @override
  String toString() {
    return 'AppPrefsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialLAppPrefsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppPrefs prefs) showSettingsData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppPrefs prefs)? showSettingsData,
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
    required TResult Function(InitialLAppPrefsState value) initial,
    required TResult Function(ShowSettingsData value) showSettingsData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLAppPrefsState value)? initial,
    TResult Function(ShowSettingsData value)? showSettingsData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLAppPrefsState extends AppPrefsState {
  const factory InitialLAppPrefsState() = _$InitialLAppPrefsState;
  const InitialLAppPrefsState._() : super._();
}

/// @nodoc
abstract class $ShowSettingsDataCopyWith<$Res> {
  factory $ShowSettingsDataCopyWith(
          ShowSettingsData value, $Res Function(ShowSettingsData) then) =
      _$ShowSettingsDataCopyWithImpl<$Res>;
  $Res call({AppPrefs prefs});
}

/// @nodoc
class _$ShowSettingsDataCopyWithImpl<$Res>
    extends _$AppPrefsStateCopyWithImpl<$Res>
    implements $ShowSettingsDataCopyWith<$Res> {
  _$ShowSettingsDataCopyWithImpl(
      ShowSettingsData _value, $Res Function(ShowSettingsData) _then)
      : super(_value, (v) => _then(v as ShowSettingsData));

  @override
  ShowSettingsData get _value => super._value as ShowSettingsData;

  @override
  $Res call({
    Object? prefs = freezed,
  }) {
    return _then(ShowSettingsData(
      prefs == freezed
          ? _value.prefs
          : prefs // ignore: cast_nullable_to_non_nullable
              as AppPrefs,
    ));
  }
}

/// @nodoc
class _$ShowSettingsData extends ShowSettingsData {
  const _$ShowSettingsData(this.prefs) : super._();

  @override
  final AppPrefs prefs;

  @override
  String toString() {
    return 'AppPrefsState.showSettingsData(prefs: $prefs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowSettingsData &&
            (identical(other.prefs, prefs) ||
                const DeepCollectionEquality().equals(other.prefs, prefs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prefs);

  @JsonKey(ignore: true)
  @override
  $ShowSettingsDataCopyWith<ShowSettingsData> get copyWith =>
      _$ShowSettingsDataCopyWithImpl<ShowSettingsData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppPrefs prefs) showSettingsData,
  }) {
    return showSettingsData(prefs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppPrefs prefs)? showSettingsData,
    required TResult orElse(),
  }) {
    if (showSettingsData != null) {
      return showSettingsData(prefs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLAppPrefsState value) initial,
    required TResult Function(ShowSettingsData value) showSettingsData,
  }) {
    return showSettingsData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLAppPrefsState value)? initial,
    TResult Function(ShowSettingsData value)? showSettingsData,
    required TResult orElse(),
  }) {
    if (showSettingsData != null) {
      return showSettingsData(this);
    }
    return orElse();
  }
}

abstract class ShowSettingsData extends AppPrefsState {
  const factory ShowSettingsData(AppPrefs prefs) = _$ShowSettingsData;
  const ShowSettingsData._() : super._();

  AppPrefs get prefs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowSettingsDataCopyWith<ShowSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}
