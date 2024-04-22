import 'package:daleelstore_asessment/ui/styles/app_text_theme.dart';
import 'package:flutter/cupertino.dart';

final CupertinoThemeData _lightTheme = _buildLightTheme();
final CupertinoThemeData _darkTheme = _buildDarkTheme();

CupertinoThemeData _buildLightTheme() {
  return CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: CupertinoColors.systemBlue,
    textTheme: AppTextTheme.getCupertinoTextTheme(),
  );
}

CupertinoThemeData _buildDarkTheme() {
  return CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: CupertinoColors.systemIndigo,
    textTheme: AppTextTheme.getCupertinoTextTheme(),
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
