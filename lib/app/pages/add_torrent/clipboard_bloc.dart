import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';

part 'clipboard_bloc.freezed.dart';

@freezed
abstract class ClipboardEvent with _$ClipboardEvent {
  const ClipboardEvent._();

  const factory ClipboardEvent.catchClipboard() = CatchClipboardEvent;
}

@freezed
abstract class ClipboardState with _$ClipboardState {
  const ClipboardState._();

  const factory ClipboardState.initial() = ClipboardInitialState;

  const factory ClipboardState.showMagnetSnackbar(String url) =
      ShowMagnetSnackbarState;
}

class ClipboardBloc extends Bloc<ClipboardEvent, ClipboardState> {
  ClipboardBloc() : super(const ClipboardInitialState()) {
    add(CatchClipboardEvent());
  }

  @override
  Stream<ClipboardState> mapEventToState(ClipboardEvent event) {
    return event.when<Stream<ClipboardState>>(
      catchClipboard: _catchClipboard,
    );
  }

  Stream<ClipboardState> _catchClipboard() async* {
    ClipboardData data = await Clipboard.getData('text/plain');
    if (isMagnetLink(data.text)) {
      yield ShowMagnetSnackbarState(data.text);
    }
  }
}
