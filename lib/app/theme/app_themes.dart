import 'package:flutter/material.dart';
import 'package:qBitRemote/commons/colors.dart';

enum AppTheme {
  System, White, Dark
}


class AppThemes {
  static ThemeData lightTheme(BuildContext context) {
    final ThemeData theme = ThemeData.light();
    return theme.copyWith(
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primaryLight,
        primaryColorDark: AppColors.primaryDark,
        scaffoldBackgroundColor: AppColors.primaryBackground,
        inputDecorationTheme: _inputDecorationLight(),
        textTheme: _textThemeLight(),
        dialogTheme: DialogTheme(
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          contentTextStyle: TextStyle(
              color: AppColors.textSubtitle1Color,
              fontSize: 17,
              fontWeight: FontWeight.w400),
        ),
        popupMenuTheme: PopupMenuThemeData(
            color: Colors.white,
            textStyle: TextStyle(color: AppColors.textTitle1Color)),
        appBarTheme: AppBarTheme.of(context)
            .copyWith(color: AppColors.primary, brightness: Brightness.dark));
  }

  static ThemeData darkTheme(BuildContext context) {
    final ThemeData theme = ThemeData();
    return theme.copyWith(
        primaryColor: AppColors.primaryDarkTheme,
        primaryColorLight: AppColors.primaryLight,
        primaryColorDark: AppColors.primaryDark,
        scaffoldBackgroundColor: AppColors.appBackgroundDark,
        cardColor: AppColors.appBarBackgroundDark,
        unselectedWidgetColor: Colors.white,
        inputDecorationTheme: _inputDecorationDark(),
        dividerColor: Colors.grey,
        dialogTheme:
            DialogTheme(backgroundColor: AppColors.dialogBackgroundDark),
        textTheme: _textThemeDark(),
        appBarTheme: AppBarTheme.of(context).copyWith(
            color: AppColors.appBarBackgroundDark, brightness: Brightness.dark),
        popupMenuTheme: PopupMenuThemeData(
            color: AppColors.appBackgroundDark,
            textStyle: TextStyle(color: AppColors.menuTextColorDark)));
  }

  static TextTheme _textThemeDark() {
    return TextTheme(
      headline1: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
      headline2: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
      headline3: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
      button: TextStyle(
          fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
      bodyText1: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
      bodyText2: TextStyle(
          fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
      caption: TextStyle(
          fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey),
    );
  }

  static TextTheme _textThemeLight() {
    return TextTheme(
      headline1: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: AppColors.textTitle1Color),
      headline2: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.textTitle1Color),
      headline3: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.textTitle1Color),
      button: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: AppColors.textTitle1Color),
      bodyText1: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColors.textTitle1Color),
      bodyText2: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: AppColors.textTitle1Color),
      caption: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: AppColors.textSubtitle1Color),
    );
  }

  static InputDecorationTheme _inputDecorationLight() {
    return InputDecorationTheme(
        hintStyle: TextStyle(color: AppColors.inputTextUnfocusBorderColor),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: AppColors.inputTextFocusedBorderColor, width: 2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide:
                BorderSide(color: AppColors.inputTextUnfocusBorderColor)));
  }

  static InputDecorationTheme _inputDecorationDark() {
    return InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
                color: AppColors.inputTextFocusedBorderColor, width: 2)));
  }
}
