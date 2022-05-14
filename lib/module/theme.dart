import 'package:flutter/material.dart';

enum AppTheme { dark, light }

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.light: ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.red,
      hintColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red,
      )),
  AppTheme.dark: ThemeData(
      scaffoldBackgroundColor: Colors.black12,
      brightness: Brightness.dark,
      hintColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.grey.shade800))
};
