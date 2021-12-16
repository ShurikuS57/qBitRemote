import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'switch_state.dart';

class SwitchThemeCubit extends Cubit<SwitchThemeState> {
  final _kThemePreference = "theme_preference";

  SwitchThemeCubit()
      : super(SwitchThemeState(themeMode: ThemeMode.system, currentIndex: 0)) {
    loadTheme();
  }

  void saveTheme(int index) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(_kThemePreference, index);
    loadTheme();
  }

  void loadTheme() async {
    var prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_kThemePreference) ?? 0;
    var themeMode = _getThemeMode(index);
    emit(SwitchThemeState(themeMode: themeMode, currentIndex: index));
  }

  ThemeMode _getThemeMode(int index) {
    var themeMode = ThemeMode.system;
    switch (index) {
      case 0:
        themeMode = ThemeMode.system;
        break;
      case 1:
        themeMode = ThemeMode.dark;
        break;
      case 2:
        themeMode = ThemeMode.light;
        break;
    }
    return themeMode;
  }
}
