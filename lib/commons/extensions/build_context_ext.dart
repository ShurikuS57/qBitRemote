import 'package:flutter/material.dart';

extension Arguments<T> on BuildContext {
  T? catchArgs<T>() {
    final Object? arg = ModalRoute.of(this)?.settings.arguments;
    T? argSetup;
    if (arg != null) {
      argSetup = arg as T;
    }
    return argSetup;
  }

  double get height => MediaQuery.of(this).size.height;
}
