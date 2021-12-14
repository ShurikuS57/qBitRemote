// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'host_settings_event.dart';

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(ServerPreferences prefs)? savePref,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SavePrefEvent value)? savePref,
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadSetupEvent);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(ServerPreferences prefs)? savePref,
  }) {
    return loadSetup?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SavePrefEvent value)? savePref,
  }) {
    return loadSetup?.call(this);
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
        (other.runtimeType == runtimeType &&
            other is SavePrefEvent &&
            const DeepCollectionEquality().equals(other.prefs, prefs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(prefs));

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadSetup,
    TResult Function(ServerPreferences prefs)? savePref,
  }) {
    return savePref?.call(prefs);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadSetupEvent value)? loadSetup,
    TResult Function(SavePrefEvent value)? savePref,
  }) {
    return savePref?.call(this);
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

  ServerPreferences get prefs;
  @JsonKey(ignore: true)
  $SavePrefEventCopyWith<SavePrefEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
