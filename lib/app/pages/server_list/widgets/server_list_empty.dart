import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ServerListEmpty extends StatelessWidget {
  const ServerListEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context)?.emptyList ?? ""),
    );
  }
}
