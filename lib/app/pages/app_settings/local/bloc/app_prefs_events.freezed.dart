// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_prefs_events.dart';

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(AppPrefs prefs)? saveAppPref,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SaveAppPrefEvent value)? saveAppPref,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadSetupEvent);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(AppPrefs prefs)? saveAppPref,
  }) {
    return loadSetup?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SaveAppPrefEvent value)? saveAppPref,
  }) {
    return loadSetup?.call(this);
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
        (other.runtimeType == runtimeType &&
            other is SaveAppPrefEvent &&
            const DeepCollectionEquality().equals(other.prefs, prefs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(prefs));

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(AppPrefs prefs)? saveAppPref,
  }) {
    return saveAppPref?.call(prefs);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SaveAppPrefEvent value)? saveAppPref,
  }) {
    return saveAppPref?.call(this);
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

  AppPrefs get prefs;
  @JsonKey(ignore: true)
  $SaveAppPrefEventCopyWith<SaveAppPrefEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
