// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_server_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddServerEventTearOff {
  const _$AddServerEventTearOff();

  SaveServerEvent save(ServerHost server) {
    return SaveServerEvent(
      server,
    );
  }

  InvalidateButtonEvent invalidateButton(
      String name, String host, String login, String password) {
    return InvalidateButtonEvent(
      name,
      host,
      login,
      password,
    );
  }

  SetEditModeEvent setEditMode(int editId) {
    return SetEditModeEvent(
      editId,
    );
  }

  CheckConnectEvent checkConnect(ServerHost server) {
    return CheckConnectEvent(
      server,
    );
  }

  SetAppBarTitleEvent setAppBarTitle(String title) {
    return SetAppBarTitleEvent(
      title,
    );
  }
}

/// @nodoc
const $AddServerEvent = _$AddServerEventTearOff();

/// @nodoc
mixin _$AddServerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerHost server) save,
    required TResult Function(
            String name, String host, String login, String password)
        invalidateButton,
    required TResult Function(int editId) setEditMode,
    required TResult Function(ServerHost server) checkConnect,
    required TResult Function(String title) setAppBarTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveServerEvent value) save,
    required TResult Function(InvalidateButtonEvent value) invalidateButton,
    required TResult Function(SetEditModeEvent value) setEditMode,
    required TResult Function(CheckConnectEvent value) checkConnect,
    required TResult Function(SetAppBarTitleEvent value) setAppBarTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddServerEventCopyWith<$Res> {
  factory $AddServerEventCopyWith(
          AddServerEvent value, $Res Function(AddServerEvent) then) =
      _$AddServerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddServerEventCopyWithImpl<$Res>
    implements $AddServerEventCopyWith<$Res> {
  _$AddServerEventCopyWithImpl(this._value, this._then);

  final AddServerEvent _value;
  // ignore: unused_field
  final $Res Function(AddServerEvent) _then;
}

/// @nodoc
abstract class $SaveServerEventCopyWith<$Res> {
  factory $SaveServerEventCopyWith(
          SaveServerEvent value, $Res Function(SaveServerEvent) then) =
      _$SaveServerEventCopyWithImpl<$Res>;
  $Res call({ServerHost server});
}

/// @nodoc
class _$SaveServerEventCopyWithImpl<$Res>
    extends _$AddServerEventCopyWithImpl<$Res>
    implements $SaveServerEventCopyWith<$Res> {
  _$SaveServerEventCopyWithImpl(
      SaveServerEvent _value, $Res Function(SaveServerEvent) _then)
      : super(_value, (v) => _then(v as SaveServerEvent));

  @override
  SaveServerEvent get _value => super._value as SaveServerEvent;

  @override
  $Res call({
    Object? server = freezed,
  }) {
    return _then(SaveServerEvent(
      server == freezed
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as ServerHost,
    ));
  }
}

/// @nodoc

class _$SaveServerEvent extends SaveServerEvent {
  const _$SaveServerEvent(this.server) : super._();

  @override
  final ServerHost server;

  @override
  String toString() {
    return 'AddServerEvent.save(server: $server)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveServerEvent &&
            const DeepCollectionEquality().equals(other.server, server));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(server));

  @JsonKey(ignore: true)
  @override
  $SaveServerEventCopyWith<SaveServerEvent> get copyWith =>
      _$SaveServerEventCopyWithImpl<SaveServerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerHost server) save,
    required TResult Function(
            String name, String host, String login, String password)
        invalidateButton,
    required TResult Function(int editId) setEditMode,
    required TResult Function(ServerHost server) checkConnect,
    required TResult Function(String title) setAppBarTitle,
  }) {
    return save(server);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
  }) {
    return save?.call(server);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(server);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveServerEvent value) save,
    required TResult Function(InvalidateButtonEvent value) invalidateButton,
    required TResult Function(SetEditModeEvent value) setEditMode,
    required TResult Function(CheckConnectEvent value) checkConnect,
    required TResult Function(SetAppBarTitleEvent value) setAppBarTitle,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveServerEvent extends AddServerEvent {
  const factory SaveServerEvent(ServerHost server) = _$SaveServerEvent;
  const SaveServerEvent._() : super._();

  ServerHost get server;
  @JsonKey(ignore: true)
  $SaveServerEventCopyWith<SaveServerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidateButtonEventCopyWith<$Res> {
  factory $InvalidateButtonEventCopyWith(InvalidateButtonEvent value,
          $Res Function(InvalidateButtonEvent) then) =
      _$InvalidateButtonEventCopyWithImpl<$Res>;
  $Res call({String name, String host, String login, String password});
}

/// @nodoc
class _$InvalidateButtonEventCopyWithImpl<$Res>
    extends _$AddServerEventCopyWithImpl<$Res>
    implements $InvalidateButtonEventCopyWith<$Res> {
  _$InvalidateButtonEventCopyWithImpl(
      InvalidateButtonEvent _value, $Res Function(InvalidateButtonEvent) _then)
      : super(_value, (v) => _then(v as InvalidateButtonEvent));

  @override
  InvalidateButtonEvent get _value => super._value as InvalidateButtonEvent;

  @override
  $Res call({
    Object? name = freezed,
    Object? host = freezed,
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(InvalidateButtonEvent(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidateButtonEvent extends InvalidateButtonEvent {
  const _$InvalidateButtonEvent(this.name, this.host, this.login, this.password)
      : super._();

  @override
  final String name;
  @override
  final String host;
  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AddServerEvent.invalidateButton(name: $name, host: $host, login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidateButtonEvent &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $InvalidateButtonEventCopyWith<InvalidateButtonEvent> get copyWith =>
      _$InvalidateButtonEventCopyWithImpl<InvalidateButtonEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerHost server) save,
    required TResult Function(
            String name, String host, String login, String password)
        invalidateButton,
    required TResult Function(int editId) setEditMode,
    required TResult Function(ServerHost server) checkConnect,
    required TResult Function(String title) setAppBarTitle,
  }) {
    return invalidateButton(name, host, login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
  }) {
    return invalidateButton?.call(name, host, login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (invalidateButton != null) {
      return invalidateButton(name, host, login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveServerEvent value) save,
    required TResult Function(InvalidateButtonEvent value) invalidateButton,
    required TResult Function(SetEditModeEvent value) setEditMode,
    required TResult Function(CheckConnectEvent value) checkConnect,
    required TResult Function(SetAppBarTitleEvent value) setAppBarTitle,
  }) {
    return invalidateButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
  }) {
    return invalidateButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (invalidateButton != null) {
      return invalidateButton(this);
    }
    return orElse();
  }
}

abstract class InvalidateButtonEvent extends AddServerEvent {
  const factory InvalidateButtonEvent(
          String name, String host, String login, String password) =
      _$InvalidateButtonEvent;
  const InvalidateButtonEvent._() : super._();

  String get name;
  String get host;
  String get login;
  String get password;
  @JsonKey(ignore: true)
  $InvalidateButtonEventCopyWith<InvalidateButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEditModeEventCopyWith<$Res> {
  factory $SetEditModeEventCopyWith(
          SetEditModeEvent value, $Res Function(SetEditModeEvent) then) =
      _$SetEditModeEventCopyWithImpl<$Res>;
  $Res call({int editId});
}

/// @nodoc
class _$SetEditModeEventCopyWithImpl<$Res>
    extends _$AddServerEventCopyWithImpl<$Res>
    implements $SetEditModeEventCopyWith<$Res> {
  _$SetEditModeEventCopyWithImpl(
      SetEditModeEvent _value, $Res Function(SetEditModeEvent) _then)
      : super(_value, (v) => _then(v as SetEditModeEvent));

  @override
  SetEditModeEvent get _value => super._value as SetEditModeEvent;

  @override
  $Res call({
    Object? editId = freezed,
  }) {
    return _then(SetEditModeEvent(
      editId == freezed
          ? _value.editId
          : editId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetEditModeEvent extends SetEditModeEvent {
  const _$SetEditModeEvent(this.editId) : super._();

  @override
  final int editId;

  @override
  String toString() {
    return 'AddServerEvent.setEditMode(editId: $editId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEditModeEvent &&
            const DeepCollectionEquality().equals(other.editId, editId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(editId));

  @JsonKey(ignore: true)
  @override
  $SetEditModeEventCopyWith<SetEditModeEvent> get copyWith =>
      _$SetEditModeEventCopyWithImpl<SetEditModeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerHost server) save,
    required TResult Function(
            String name, String host, String login, String password)
        invalidateButton,
    required TResult Function(int editId) setEditMode,
    required TResult Function(ServerHost server) checkConnect,
    required TResult Function(String title) setAppBarTitle,
  }) {
    return setEditMode(editId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
  }) {
    return setEditMode?.call(editId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (setEditMode != null) {
      return setEditMode(editId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveServerEvent value) save,
    required TResult Function(InvalidateButtonEvent value) invalidateButton,
    required TResult Function(SetEditModeEvent value) setEditMode,
    required TResult Function(CheckConnectEvent value) checkConnect,
    required TResult Function(SetAppBarTitleEvent value) setAppBarTitle,
  }) {
    return setEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
  }) {
    return setEditMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (setEditMode != null) {
      return setEditMode(this);
    }
    return orElse();
  }
}

abstract class SetEditModeEvent extends AddServerEvent {
  const factory SetEditModeEvent(int editId) = _$SetEditModeEvent;
  const SetEditModeEvent._() : super._();

  int get editId;
  @JsonKey(ignore: true)
  $SetEditModeEventCopyWith<SetEditModeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckConnectEventCopyWith<$Res> {
  factory $CheckConnectEventCopyWith(
          CheckConnectEvent value, $Res Function(CheckConnectEvent) then) =
      _$CheckConnectEventCopyWithImpl<$Res>;
  $Res call({ServerHost server});
}

/// @nodoc
class _$CheckConnectEventCopyWithImpl<$Res>
    extends _$AddServerEventCopyWithImpl<$Res>
    implements $CheckConnectEventCopyWith<$Res> {
  _$CheckConnectEventCopyWithImpl(
      CheckConnectEvent _value, $Res Function(CheckConnectEvent) _then)
      : super(_value, (v) => _then(v as CheckConnectEvent));

  @override
  CheckConnectEvent get _value => super._value as CheckConnectEvent;

  @override
  $Res call({
    Object? server = freezed,
  }) {
    return _then(CheckConnectEvent(
      server == freezed
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as ServerHost,
    ));
  }
}

/// @nodoc

class _$CheckConnectEvent extends CheckConnectEvent {
  const _$CheckConnectEvent(this.server) : super._();

  @override
  final ServerHost server;

  @override
  String toString() {
    return 'AddServerEvent.checkConnect(server: $server)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckConnectEvent &&
            const DeepCollectionEquality().equals(other.server, server));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(server));

  @JsonKey(ignore: true)
  @override
  $CheckConnectEventCopyWith<CheckConnectEvent> get copyWith =>
      _$CheckConnectEventCopyWithImpl<CheckConnectEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerHost server) save,
    required TResult Function(
            String name, String host, String login, String password)
        invalidateButton,
    required TResult Function(int editId) setEditMode,
    required TResult Function(ServerHost server) checkConnect,
    required TResult Function(String title) setAppBarTitle,
  }) {
    return checkConnect(server);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
  }) {
    return checkConnect?.call(server);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (checkConnect != null) {
      return checkConnect(server);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveServerEvent value) save,
    required TResult Function(InvalidateButtonEvent value) invalidateButton,
    required TResult Function(SetEditModeEvent value) setEditMode,
    required TResult Function(CheckConnectEvent value) checkConnect,
    required TResult Function(SetAppBarTitleEvent value) setAppBarTitle,
  }) {
    return checkConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
  }) {
    return checkConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (checkConnect != null) {
      return checkConnect(this);
    }
    return orElse();
  }
}

abstract class CheckConnectEvent extends AddServerEvent {
  const factory CheckConnectEvent(ServerHost server) = _$CheckConnectEvent;
  const CheckConnectEvent._() : super._();

  ServerHost get server;
  @JsonKey(ignore: true)
  $CheckConnectEventCopyWith<CheckConnectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAppBarTitleEventCopyWith<$Res> {
  factory $SetAppBarTitleEventCopyWith(
          SetAppBarTitleEvent value, $Res Function(SetAppBarTitleEvent) then) =
      _$SetAppBarTitleEventCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$SetAppBarTitleEventCopyWithImpl<$Res>
    extends _$AddServerEventCopyWithImpl<$Res>
    implements $SetAppBarTitleEventCopyWith<$Res> {
  _$SetAppBarTitleEventCopyWithImpl(
      SetAppBarTitleEvent _value, $Res Function(SetAppBarTitleEvent) _then)
      : super(_value, (v) => _then(v as SetAppBarTitleEvent));

  @override
  SetAppBarTitleEvent get _value => super._value as SetAppBarTitleEvent;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(SetAppBarTitleEvent(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAppBarTitleEvent extends SetAppBarTitleEvent {
  const _$SetAppBarTitleEvent(this.title) : super._();

  @override
  final String title;

  @override
  String toString() {
    return 'AddServerEvent.setAppBarTitle(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAppBarTitleEvent &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  $SetAppBarTitleEventCopyWith<SetAppBarTitleEvent> get copyWith =>
      _$SetAppBarTitleEventCopyWithImpl<SetAppBarTitleEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServerHost server) save,
    required TResult Function(
            String name, String host, String login, String password)
        invalidateButton,
    required TResult Function(int editId) setEditMode,
    required TResult Function(ServerHost server) checkConnect,
    required TResult Function(String title) setAppBarTitle,
  }) {
    return setAppBarTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
  }) {
    return setAppBarTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServerHost server)? save,
    TResult Function(String name, String host, String login, String password)?
        invalidateButton,
    TResult Function(int editId)? setEditMode,
    TResult Function(ServerHost server)? checkConnect,
    TResult Function(String title)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (setAppBarTitle != null) {
      return setAppBarTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveServerEvent value) save,
    required TResult Function(InvalidateButtonEvent value) invalidateButton,
    required TResult Function(SetEditModeEvent value) setEditMode,
    required TResult Function(CheckConnectEvent value) checkConnect,
    required TResult Function(SetAppBarTitleEvent value) setAppBarTitle,
  }) {
    return setAppBarTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
  }) {
    return setAppBarTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveServerEvent value)? save,
    TResult Function(InvalidateButtonEvent value)? invalidateButton,
    TResult Function(SetEditModeEvent value)? setEditMode,
    TResult Function(CheckConnectEvent value)? checkConnect,
    TResult Function(SetAppBarTitleEvent value)? setAppBarTitle,
    required TResult orElse(),
  }) {
    if (setAppBarTitle != null) {
      return setAppBarTitle(this);
    }
    return orElse();
  }
}

abstract class SetAppBarTitleEvent extends AddServerEvent {
  const factory SetAppBarTitleEvent(String title) = _$SetAppBarTitleEvent;
  const SetAppBarTitleEvent._() : super._();

  String get title;
  @JsonKey(ignore: true)
  $SetAppBarTitleEventCopyWith<SetAppBarTitleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
