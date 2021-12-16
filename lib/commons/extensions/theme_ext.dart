import 'package:flutter/material.dart';

extension ResourseProviding on BuildContext {

  ThemeData theme() {
    return Theme.of(this);
  }

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}