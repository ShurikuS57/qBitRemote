import 'package:freezed_annotation/freezed_annotation.dart';

part 'clipboard_event.freezed.dart';

@freezed
class ClipboardEvent with _$ClipboardEvent {
  const ClipboardEvent._();

  const factory ClipboardEvent.catchClipboard() = CatchClipboardEvent;
}