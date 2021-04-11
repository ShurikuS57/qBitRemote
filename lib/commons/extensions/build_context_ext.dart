import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  // AppLocalizations.of(context)?.

  AppLocalizations intl() {
    final appLocale = AppLocalizations.of(this);
    if (appLocale == null) {
      throw ("Not found localization from context");
    }
    return appLocale;
  }
}
