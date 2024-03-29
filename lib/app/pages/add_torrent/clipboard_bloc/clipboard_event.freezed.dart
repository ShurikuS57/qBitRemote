// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clipboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClipboardEventTearOff {
  const _$ClipboardEventTearOff();

  CatchClipboardEvent catchClipboard() {
    return const CatchClipboardEvent();
  }
}

/// @nodoc
const $ClipboardEvent = _$ClipboardEventTearOff();

/// @nodoc
mixin _$ClipboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() catchClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? catchClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? catchClipboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatchClipboardEvent value) catchClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatchClipboardEvent value)? catchClipboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatchClipboardEvent value)? catchClipboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipboardEventCopyWith<$Res> {
  factory $ClipboardEventCopyWith(
          ClipboardEvent value, $Res Function(ClipboardEvent) then) =
      _$ClipboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClipboardEventCopyWithImpl<$Res>
    implements $ClipboardEventCopyWith<$Res> {
  _$ClipboardEventCopyWithImpl(this._value, this._then);

  final ClipboardEvent _value;
  // ignore: unused_field
  final $Res Function(ClipboardEvent) _then;
}

/// @nodoc
abstract class $CatchClipboardEventCopyWith<$Res> {
  factory $CatchClipboardEventCopyWith(
          CatchClipboardEvent value, $Res Function(CatchClipboardEvent) then) =
      _$CatchClipboardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatchClipboardEventCopyWithImpl<$Res>
    extends _$ClipboardEventCopyWithImpl<$Res>
    implements $CatchClipboardEventCopyWith<$Res> {
  _$CatchClipboardEventCopyWithImpl(
      CatchClipboardEvent _value, $Res Function(CatchClipboardEvent) _then)
      : super(_value, (v) => _then(v as CatchClipboardEvent));

  @override
  CatchClipboardEvent get _value => super._value as CatchClipboardEvent;
}

/// @nodoc

class _$CatchClipboardEvent extends CatchClipboardEvent {
  const _$CatchClipboardEvent() : super._();

  @override
  String toString() {
    return 'ClipboardEvent.catchClipboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CatchClipboardEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() catchClipboard,
  }) {
    return catchClipboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? catchClipboard,
  }) {
    return catchClipboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? catchClipboard,
    required TResult orElse(),
  }) {
    if (catchClipboard != null) {
      return catchClipboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatchClipboardEvent value) catchClipboard,
  }) {
    return catchClipboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CatchClipboardEvent value)? catchClipboard,
  }) {
    return catchClipboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatchClipboardEvent value)? catchClipboard,
    required TResult orElse(),
  }) {
    if (catchClipboard != null) {
      return catchClipboard(this);
    }
    return orElse();
  }
}

abstract class CatchClipboardEvent extends ClipboardEvent {
  const factory CatchClipboardEvent() = _$CatchClipboardEvent;
  const CatchClipboardEvent._() : super._();
}
