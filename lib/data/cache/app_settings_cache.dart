import 'package:daleelstore_asessment/constants/cache_keys.dart';
import 'package:daleelstore_asessment/ui/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../services/shared_preferences_service.dart';

class AppSettingsCache {
  static final SharedPreferences prefs = SharedPreferencesService.instance.prefs;

  static void setThemeMode({required ThemeMode themeMode}) {
    Get.changeThemeMode(themeMode);
    prefs.setString(themeKey, themeMode.name);
  }

  static CupertinoThemeData getThemeMode() {
    var theme = prefs.getString(themeKey);
    if (theme == null) {
      theme = "system";
      setThemeMode(themeMode: ThemeMode.light);
    }
    return _mapThemeData(theme);
  }

  // Helper method to map string themes directly to CupertinoThemeData
  static CupertinoThemeData _mapThemeData(String theme) {
    switch (theme) {
      case 'dark':
        return Themes.darkTheme().themeData;
      case 'light':
      default:
        return Themes.lightTheme().themeData;
    }
  }
}
