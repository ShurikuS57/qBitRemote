import 'package:flutter/material.dart';

class TorrentsLoadingWidget extends StatelessWidget {
  const TorrentsLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator()
    );
  }
}