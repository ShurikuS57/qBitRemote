import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qBitRemote/app/utils/validator_helper.dart';

import 'clipboard_event.dart';
import 'clipboard_state.dart';

class ClipboardBloc extends Bloc<ClipboardEvent, ClipboardState> {
  ClipboardBloc() : super(const ClipboardInitialState()) {
    on<CatchClipboardEvent>(_catchClipboard);
    add(CatchClipboardEvent());
  }

  void _catchClipboard(
      CatchClipboardEvent event, Emitter<ClipboardState> emit) async {
    ClipboardData? data = await Clipboard.getData('text/plain');
    String? text = data?.text;
    if (text != null && isMagnetLink(text)) {
      emit(ShowMagnetSnackbarState(text));
    }
  }
}
