import 'package:freezed_annotation/freezed_annotation.dart';

part 'clipboard_state.freezed.dart';

@freezed
class ClipboardState with _$ClipboardState {
  const ClipboardState._();

  const factory ClipboardState.initial() = ClipboardInitialState;

  const factory ClipboardState.showMagnetSnackbar(String url) =
  ShowMagnetSnackbarState;
}