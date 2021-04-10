// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_server_bloc.dart';

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
class _$SaveServerEvent extends SaveServerEvent with DiagnosticableTreeMixin {
  const _$SaveServerEvent(this.server) : super._();

  @override
  final ServerHost server;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerEvent.save(server: $server)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerEvent.save'))
      ..add(DiagnosticsProperty('server', server));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveServerEvent &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(server);

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

  ServerHost get server => throw _privateConstructorUsedError;

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
class _$InvalidateButtonEvent extends InvalidateButtonEvent
    with DiagnosticableTreeMixin {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerEvent.invalidateButton(name: $name, host: $host, login: $login, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerEvent.invalidateButton'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('host', host))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidateButtonEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(password);

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

  String get name => throw _privateConstructorUsedError;

  String get host => throw _privateConstructorUsedError;

  String get login => throw _privateConstructorUsedError;

  String get password => throw _privateConstructorUsedError;

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
class _$SetEditModeEvent extends SetEditModeEvent with DiagnosticableTreeMixin {
  const _$SetEditModeEvent(this.editId) : super._();

  @override
  final int editId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerEvent.setEditMode(editId: $editId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerEvent.setEditMode'))
      ..add(DiagnosticsProperty('editId', editId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetEditModeEvent &&
            (identical(other.editId, editId) ||
                const DeepCollectionEquality().equals(other.editId, editId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(editId);

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

  int get editId => throw _privateConstructorUsedError;

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
class _$CheckConnectEvent extends CheckConnectEvent
    with DiagnosticableTreeMixin {
  const _$CheckConnectEvent(this.server) : super._();

  @override
  final ServerHost server;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerEvent.checkConnect(server: $server)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerEvent.checkConnect'))
      ..add(DiagnosticsProperty('server', server));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckConnectEvent &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(server);

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

  ServerHost get server => throw _privateConstructorUsedError;

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
class _$SetAppBarTitleEvent extends SetAppBarTitleEvent
    with DiagnosticableTreeMixin {
  const _$SetAppBarTitleEvent(this.title) : super._();

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerEvent.setAppBarTitle(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerEvent.setAppBarTitle'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetAppBarTitleEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

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

  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetAppBarTitleEventCopyWith<SetAppBarTitleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddServerStateTearOff {
  const _$AddServerStateTearOff();

  InitialAddServerState initial() {
    return const InitialAddServerState();
  }

  SetupEditModeState setupEditMode(ServerHost server) {
    return SetupEditModeState(
      server,
    );
  }

  ButtoinEnableState buttonEnable(bool isEnable) {
    return ButtoinEnableState(
      isEnable,
    );
  }

  ConnectSuccessResultState connectSuccessResult() {
    return const ConnectSuccessResultState();
  }

  TestConnectState testConnectResult(bool isConnect) {
    return TestConnectState(
      isConnect,
    );
  }

  AppBarTitleState setupAppBarTitle(String title) {
    return AppBarTitleState(
      title,
    );
  }
}

/// @nodoc
const $AddServerState = _$AddServerStateTearOff();

/// @nodoc
mixin _$AddServerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddServerStateCopyWith<$Res> {
  factory $AddServerStateCopyWith(
          AddServerState value, $Res Function(AddServerState) then) =
      _$AddServerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddServerStateCopyWithImpl<$Res>
    implements $AddServerStateCopyWith<$Res> {
  _$AddServerStateCopyWithImpl(this._value, this._then);

  final AddServerState _value;
  // ignore: unused_field
  final $Res Function(AddServerState) _then;
}

/// @nodoc
abstract class $InitialAddServerStateCopyWith<$Res> {
  factory $InitialAddServerStateCopyWith(InitialAddServerState value,
          $Res Function(InitialAddServerState) then) =
      _$InitialAddServerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialAddServerStateCopyWithImpl<$Res>
    extends _$AddServerStateCopyWithImpl<$Res>
    implements $InitialAddServerStateCopyWith<$Res> {
  _$InitialAddServerStateCopyWithImpl(
      InitialAddServerState _value, $Res Function(InitialAddServerState) _then)
      : super(_value, (v) => _then(v as InitialAddServerState));

  @override
  InitialAddServerState get _value => super._value as InitialAddServerState;
}

/// @nodoc
class _$InitialAddServerState extends InitialAddServerState
    with DiagnosticableTreeMixin {
  const _$InitialAddServerState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AddServerState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialAddServerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
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
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAddServerState extends AddServerState {
  const factory InitialAddServerState() = _$InitialAddServerState;

  const InitialAddServerState._() : super._();
}

/// @nodoc
abstract class $SetupEditModeStateCopyWith<$Res> {
  factory $SetupEditModeStateCopyWith(
          SetupEditModeState value, $Res Function(SetupEditModeState) then) =
      _$SetupEditModeStateCopyWithImpl<$Res>;
  $Res call({ServerHost server});
}

/// @nodoc
class _$SetupEditModeStateCopyWithImpl<$Res>
    extends _$AddServerStateCopyWithImpl<$Res>
    implements $SetupEditModeStateCopyWith<$Res> {
  _$SetupEditModeStateCopyWithImpl(
      SetupEditModeState _value, $Res Function(SetupEditModeState) _then)
      : super(_value, (v) => _then(v as SetupEditModeState));

  @override
  SetupEditModeState get _value => super._value as SetupEditModeState;

  @override
  $Res call({
    Object? server = freezed,
  }) {
    return _then(SetupEditModeState(
      server == freezed
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as ServerHost,
    ));
  }
}

/// @nodoc
class _$SetupEditModeState extends SetupEditModeState
    with DiagnosticableTreeMixin {
  const _$SetupEditModeState(this.server) : super._();

  @override
  final ServerHost server;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerState.setupEditMode(server: $server)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerState.setupEditMode'))
      ..add(DiagnosticsProperty('server', server));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetupEditModeState &&
            (identical(other.server, server) ||
                const DeepCollectionEquality().equals(other.server, server)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(server);

  @JsonKey(ignore: true)
  @override
  $SetupEditModeStateCopyWith<SetupEditModeState> get copyWith =>
      _$SetupEditModeStateCopyWithImpl<SetupEditModeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) {
    return setupEditMode(server);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (setupEditMode != null) {
      return setupEditMode(server);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) {
    return setupEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (setupEditMode != null) {
      return setupEditMode(this);
    }
    return orElse();
  }
}

abstract class SetupEditModeState extends AddServerState {
  const factory SetupEditModeState(ServerHost server) = _$SetupEditModeState;

  const SetupEditModeState._() : super._();

  ServerHost get server => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetupEditModeStateCopyWith<SetupEditModeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtoinEnableStateCopyWith<$Res> {
  factory $ButtoinEnableStateCopyWith(
          ButtoinEnableState value, $Res Function(ButtoinEnableState) then) =
      _$ButtoinEnableStateCopyWithImpl<$Res>;
  $Res call({bool isEnable});
}

/// @nodoc
class _$ButtoinEnableStateCopyWithImpl<$Res>
    extends _$AddServerStateCopyWithImpl<$Res>
    implements $ButtoinEnableStateCopyWith<$Res> {
  _$ButtoinEnableStateCopyWithImpl(
      ButtoinEnableState _value, $Res Function(ButtoinEnableState) _then)
      : super(_value, (v) => _then(v as ButtoinEnableState));

  @override
  ButtoinEnableState get _value => super._value as ButtoinEnableState;

  @override
  $Res call({
    Object? isEnable = freezed,
  }) {
    return _then(ButtoinEnableState(
      isEnable == freezed
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$ButtoinEnableState extends ButtoinEnableState
    with DiagnosticableTreeMixin {
  const _$ButtoinEnableState(this.isEnable) : super._();

  @override
  final bool isEnable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerState.buttonEnable(isEnable: $isEnable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerState.buttonEnable'))
      ..add(DiagnosticsProperty('isEnable', isEnable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ButtoinEnableState &&
            (identical(other.isEnable, isEnable) ||
                const DeepCollectionEquality()
                    .equals(other.isEnable, isEnable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEnable);

  @JsonKey(ignore: true)
  @override
  $ButtoinEnableStateCopyWith<ButtoinEnableState> get copyWith =>
      _$ButtoinEnableStateCopyWithImpl<ButtoinEnableState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) {
    return buttonEnable(isEnable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (buttonEnable != null) {
      return buttonEnable(isEnable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) {
    return buttonEnable(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (buttonEnable != null) {
      return buttonEnable(this);
    }
    return orElse();
  }
}

abstract class ButtoinEnableState extends AddServerState {
  const factory ButtoinEnableState(bool isEnable) = _$ButtoinEnableState;

  const ButtoinEnableState._() : super._();

  bool get isEnable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ButtoinEnableStateCopyWith<ButtoinEnableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectSuccessResultStateCopyWith<$Res> {
  factory $ConnectSuccessResultStateCopyWith(ConnectSuccessResultState value,
          $Res Function(ConnectSuccessResultState) then) =
      _$ConnectSuccessResultStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectSuccessResultStateCopyWithImpl<$Res>
    extends _$AddServerStateCopyWithImpl<$Res>
    implements $ConnectSuccessResultStateCopyWith<$Res> {
  _$ConnectSuccessResultStateCopyWithImpl(ConnectSuccessResultState _value,
      $Res Function(ConnectSuccessResultState) _then)
      : super(_value, (v) => _then(v as ConnectSuccessResultState));

  @override
  ConnectSuccessResultState get _value =>
      super._value as ConnectSuccessResultState;
}

/// @nodoc
class _$ConnectSuccessResultState extends ConnectSuccessResultState
    with DiagnosticableTreeMixin {
  const _$ConnectSuccessResultState() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerState.connectSuccessResult()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerState.connectSuccessResult'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectSuccessResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) {
    return connectSuccessResult();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (connectSuccessResult != null) {
      return connectSuccessResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) {
    return connectSuccessResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (connectSuccessResult != null) {
      return connectSuccessResult(this);
    }
    return orElse();
  }
}

abstract class ConnectSuccessResultState extends AddServerState {
  const factory ConnectSuccessResultState() = _$ConnectSuccessResultState;

  const ConnectSuccessResultState._() : super._();
}

/// @nodoc
abstract class $TestConnectStateCopyWith<$Res> {
  factory $TestConnectStateCopyWith(
          TestConnectState value, $Res Function(TestConnectState) then) =
      _$TestConnectStateCopyWithImpl<$Res>;
  $Res call({bool isConnect});
}

/// @nodoc
class _$TestConnectStateCopyWithImpl<$Res>
    extends _$AddServerStateCopyWithImpl<$Res>
    implements $TestConnectStateCopyWith<$Res> {
  _$TestConnectStateCopyWithImpl(
      TestConnectState _value, $Res Function(TestConnectState) _then)
      : super(_value, (v) => _then(v as TestConnectState));

  @override
  TestConnectState get _value => super._value as TestConnectState;

  @override
  $Res call({
    Object? isConnect = freezed,
  }) {
    return _then(TestConnectState(
      isConnect == freezed
          ? _value.isConnect
          : isConnect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$TestConnectState extends TestConnectState with DiagnosticableTreeMixin {
  const _$TestConnectState(this.isConnect) : super._();

  @override
  final bool isConnect;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerState.testConnectResult(isConnect: $isConnect)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerState.testConnectResult'))
      ..add(DiagnosticsProperty('isConnect', isConnect));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TestConnectState &&
            (identical(other.isConnect, isConnect) ||
                const DeepCollectionEquality()
                    .equals(other.isConnect, isConnect)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isConnect);

  @JsonKey(ignore: true)
  @override
  $TestConnectStateCopyWith<TestConnectState> get copyWith =>
      _$TestConnectStateCopyWithImpl<TestConnectState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) {
    return testConnectResult(isConnect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (testConnectResult != null) {
      return testConnectResult(isConnect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) {
    return testConnectResult(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (testConnectResult != null) {
      return testConnectResult(this);
    }
    return orElse();
  }
}

abstract class TestConnectState extends AddServerState {
  const factory TestConnectState(bool isConnect) = _$TestConnectState;

  const TestConnectState._() : super._();

  bool get isConnect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestConnectStateCopyWith<TestConnectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBarTitleStateCopyWith<$Res> {
  factory $AppBarTitleStateCopyWith(
          AppBarTitleState value, $Res Function(AppBarTitleState) then) =
      _$AppBarTitleStateCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class _$AppBarTitleStateCopyWithImpl<$Res>
    extends _$AddServerStateCopyWithImpl<$Res>
    implements $AppBarTitleStateCopyWith<$Res> {
  _$AppBarTitleStateCopyWithImpl(
      AppBarTitleState _value, $Res Function(AppBarTitleState) _then)
      : super(_value, (v) => _then(v as AppBarTitleState));

  @override
  AppBarTitleState get _value => super._value as AppBarTitleState;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(AppBarTitleState(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$AppBarTitleState extends AppBarTitleState with DiagnosticableTreeMixin {
  const _$AppBarTitleState(this.title) : super._();

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddServerState.setupAppBarTitle(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddServerState.setupAppBarTitle'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppBarTitleState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $AppBarTitleStateCopyWith<AppBarTitleState> get copyWith =>
      _$AppBarTitleStateCopyWithImpl<AppBarTitleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ServerHost server) setupEditMode,
    required TResult Function(bool isEnable) buttonEnable,
    required TResult Function() connectSuccessResult,
    required TResult Function(bool isConnect) testConnectResult,
    required TResult Function(String title) setupAppBarTitle,
  }) {
    return setupAppBarTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ServerHost server)? setupEditMode,
    TResult Function(bool isEnable)? buttonEnable,
    TResult Function()? connectSuccessResult,
    TResult Function(bool isConnect)? testConnectResult,
    TResult Function(String title)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (setupAppBarTitle != null) {
      return setupAppBarTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAddServerState value) initial,
    required TResult Function(SetupEditModeState value) setupEditMode,
    required TResult Function(ButtoinEnableState value) buttonEnable,
    required TResult Function(ConnectSuccessResultState value)
        connectSuccessResult,
    required TResult Function(TestConnectState value) testConnectResult,
    required TResult Function(AppBarTitleState value) setupAppBarTitle,
  }) {
    return setupAppBarTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAddServerState value)? initial,
    TResult Function(SetupEditModeState value)? setupEditMode,
    TResult Function(ButtoinEnableState value)? buttonEnable,
    TResult Function(ConnectSuccessResultState value)? connectSuccessResult,
    TResult Function(TestConnectState value)? testConnectResult,
    TResult Function(AppBarTitleState value)? setupAppBarTitle,
    required TResult orElse(),
  }) {
    if (setupAppBarTitle != null) {
      return setupAppBarTitle(this);
    }
    return orElse();
  }
}

abstract class AppBarTitleState extends AddServerState {
  const factory AppBarTitleState(String title) = _$AppBarTitleState;

  const AppBarTitleState._() : super._();

  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBarTitleStateCopyWith<AppBarTitleState> get copyWith =>
      throw _privateConstructorUsedError;
}
