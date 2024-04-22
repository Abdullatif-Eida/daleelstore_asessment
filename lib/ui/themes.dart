import 'package:flutter/cupertino.dart';

final CupertinoThemeData _lightTheme = _buildLightTheme();
final CupertinoThemeData _darkTheme = _buildDarkTheme();

CupertinoThemeData _buildLightTheme() {
  return const CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: CupertinoColors.systemBlue,
  );
}

CupertinoThemeData _buildDarkTheme() {
  return CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: CupertinoColors.systemIndigo,
  );
}

class Themes {
  final CupertinoThemeData themeData;

  Themes({required this.themeData});

  factory Themes.lightTheme() {
    return Themes(themeData: _lightTheme);
  }

  factory Themes.darkTheme() {
    return Themes(themeData: _darkTheme);
  }
}
