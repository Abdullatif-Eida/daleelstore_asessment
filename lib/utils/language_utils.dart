import 'package:daleelstore_asessment/constants/cache_keys.dart';
import 'package:daleelstore_asessment/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageUtils {
  static Future<Locale> getInitialLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString(languageCodeKey);
    String? countryCode = prefs.getString(countryCodeKey);

    if (languageCode != null && countryCode != null) {
      return Locale(languageCode, countryCode);
    } else {
      // If no stored language preference, return the device locale
      var deviceLocale = Get.deviceLocale;
      return deviceLocale ?? defaultLocale; // Default to English if device locale is null
    }
  }

  static String getCurrentLocaleCode() {
    // Try to get the app's current locale
    Locale? currentLocale = Get.locale;

    if (currentLocale != null) {
      // If the app's locale is set, return its language code
      return currentLocale.languageCode;
    } else {
      // If the app's locale is not set, try to get the device's locale
      Locale? deviceLocale = Get.deviceLocale;
      if (deviceLocale != null) {
        // If the device's locale is found, return its language code
        return deviceLocale.languageCode;
      }
    }

    // If neither the app's locale nor the device's locale can be determined,
    // return a default language code, for example, 'en' for English.
    return defaultLocaleCode;
  }

  static Iterable<LocalizationsDelegate<dynamic>> getLocalizationsDelegates() {
    Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];

    return localizationsDelegates;
  }

  static String localize(String key) {
    return key.tr;
  }
}
