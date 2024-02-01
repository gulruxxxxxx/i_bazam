import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeManager? _instance;
  late ThemeData _themeData;

  ThemeManager._internal() {
    _themeData = ThemeData.light();
  }

  factory ThemeManager() {
    if (_instance == null) {
      _instance = ThemeManager._internal();
    }
    return _instance!;
  }

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
  }

  ThemeData get themeData => _themeData;
}
