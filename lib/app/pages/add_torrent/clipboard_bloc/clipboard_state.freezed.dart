// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clipboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClipboardStateTearOff {
  const _$ClipboardStateTearOff();

  ClipboardInitialState initial() {
    return const ClipboardInitialState();
  }

  ShowMagnetSnackbarState showMagnetSnackbar(String url) {
    return ShowMagnetSnackbarState(
      url,
    );
  }
}

/// @nodoc
const $ClipboardState = _$ClipboardStateTearOff();

/// @nodoc
mixin _$ClipboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) showMagnetSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? showMagnetSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? showMagnetSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipboardInitialState value) initial,
    required TResult Function(ShowMagnetSnackbarState value) showMagnetSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClipboardInitialState value)? initial,
    TResult Function(ShowMagnetSnackbarState value)? showMagnetSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipboardInitialState value)? initial,
    TResult Function(ShowMagnetSnackbarState value)? showMagnetSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipboardStateCopyWith<$Res> {
  factory $ClipboardStateCopyWith(
          ClipboardState value, $Res Function(ClipboardState) then) =
      _$ClipboardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClipboardStateCopyWithImpl<$Res>
    implements $ClipboardStateCopyWith<$Res> {
  _$ClipboardStateCopyWithImpl(this._value, this._then);

  final ClipboardState _value;
  // ignore: unused_field
  final $Res Function(ClipboardState) _then;
}

/// @nodoc
abstract class $ClipboardInitialStateCopyWith<$Res> {
  factory $ClipboardInitialStateCopyWith(ClipboardInitialState value,
          $Res Function(ClipboardInitialState) then) =
      _$ClipboardInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClipboardInitialStateCopyWithImpl<$Res>
    extends _$ClipboardStateCopyWithImpl<$Res>
    implements $ClipboardInitialStateCopyWith<$Res> {
  _$ClipboardInitialStateCopyWithImpl(
      ClipboardInitialState _value, $Res Function(ClipboardInitialState) _then)
      : super(_value, (v) => _then(v as ClipboardInitialState));

  @override
  ClipboardInitialState get _value => super._value as ClipboardInitialState;
}

/// @nodoc

class _$ClipboardInitialState extends ClipboardInitialState {
  const _$ClipboardInitialState() : super._();

  @override
  String toString() {
    return 'ClipboardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClipboardInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) showMagnetSnackbar,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? showMagnetSnackbar,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? showMagnetSnackbar,
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
    required TResult Function(ClipboardInitialState value) initial,
    required TResult Function(ShowMagnetSnackbarState value) showMagnetSnackbar,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClipboardInitialState value)? initial,
    TResult Function(ShowMagnetSnackbarState value)? showMagnetSnackbar,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipboardInitialState value)? initial,
    TResult Function(ShowMagnetSnackbarState value)? showMagnetSnackbar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ClipboardInitialState extends ClipboardState {
  const factory ClipboardInitialState() = _$ClipboardInitialState;
  const ClipboardInitialState._() : super._();
}

/// @nodoc
abstract class $ShowMagnetSnackbarStateCopyWith<$Res> {
  factory $ShowMagnetSnackbarStateCopyWith(ShowMagnetSnackbarState value,
          $Res Function(ShowMagnetSnackbarState) then) =
      _$ShowMagnetSnackbarStateCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ShowMagnetSnackbarStateCopyWithImpl<$Res>
    extends _$ClipboardStateCopyWithImpl<$Res>
    implements $ShowMagnetSnackbarStateCopyWith<$Res> {
  _$ShowMagnetSnackbarStateCopyWithImpl(ShowMagnetSnackbarState _value,
      $Res Function(ShowMagnetSnackbarState) _then)
      : super(_value, (v) => _then(v as ShowMagnetSnackbarState));

  @override
  ShowMagnetSnackbarState get _value => super._value as ShowMagnetSnackbarState;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(ShowMagnetSnackbarState(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowMagnetSnackbarState extends ShowMagnetSnackbarState {
  const _$ShowMagnetSnackbarState(this.url) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'ClipboardState.showMagnetSnackbar(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowMagnetSnackbarState &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $ShowMagnetSnackbarStateCopyWith<ShowMagnetSnackbarState> get copyWith =>
      _$ShowMagnetSnackbarStateCopyWithImpl<ShowMagnetSnackbarState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String url) showMagnetSnackbar,
  }) {
    return showMagnetSnackbar(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? showMagnetSnackbar,
  }) {
    return showMagnetSnackbar?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String url)? showMagnetSnackbar,
    required TResult orElse(),
  }) {
    if (showMagnetSnackbar != null) {
      return showMagnetSnackbar(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClipboardInitialState value) initial,
    required TResult Function(ShowMagnetSnackbarState value) showMagnetSnackbar,
  }) {
    return showMagnetSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClipboardInitialState value)? initial,
    TResult Function(ShowMagnetSnackbarState value)? showMagnetSnackbar,
  }) {
    return showMagnetSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClipboardInitialState value)? initial,
    TResult Function(ShowMagnetSnackbarState value)? showMagnetSnackbar,
    required TResult orElse(),
  }) {
    if (showMagnetSnackbar != null) {
      return showMagnetSnackbar(this);
    }
    return orElse();
  }
}

abstract class ShowMagnetSnackbarState extends ClipboardState {
  const factory ShowMagnetSnackbarState(String url) = _$ShowMagnetSnackbarState;
  const ShowMagnetSnackbarState._() : super._();

  String get url;
  @JsonKey(ignore: true)
  $ShowMagnetSnackbarStateCopyWith<ShowMagnetSnackbarState> get copyWith =>
      throw _privateConstructorUsedError;
}
