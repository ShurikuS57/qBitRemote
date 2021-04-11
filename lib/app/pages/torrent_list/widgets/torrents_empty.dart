import 'package:flutter/material.dart';
import 'package:qBitRemote/commons/extensions/build_context_ext.dart';

class TorrentsEmptyWidget extends StatelessWidget {
  const TorrentsEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.intl().emptyTorrentList),
    );
  }
}
