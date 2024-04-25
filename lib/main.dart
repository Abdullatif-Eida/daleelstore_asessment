import 'package:daleelstore_asessment/controllers/login_controller.dart';
import 'package:daleelstore_asessment/controllers/translations.dart';
import 'package:daleelstore_asessment/data/cache/app_settings_cache.dart';
import 'package:daleelstore_asessment/routes/app_pages.dart';
import 'package:daleelstore_asessment/services/shared_preferences_service.dart';
import 'package:daleelstore_asessment/utils/language_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() async {
    var service = SharedPreferencesService();
    await service.init();
    return service;
  });

  Get.put<LoginController>(
    LoginController(),
  );

  Locale initialLocale = await LanguageUtils.getInitialLocale();

  runApp(
    GetCupertinoApp(
      translations: Messages(), // Translations
      locale: initialLocale,
      fallbackLocale: Locale(LanguageUtils.getCurrentLocaleCode()), // Fallback locale in case an undefined locale is selected
      // Builder to modify the default MediaQuery's textScaleFactor
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaler: TextScaler.linear(data.textScaleFactor > 1.2 ? 1.2 : data.textScaleFactor)),
          child: child!,
        );
      },
      localizationsDelegates: LanguageUtils.getLocalizationsDelegates(),
      debugShowCheckedModeBanner: false,
      title: 'Daleelstore',
      theme: AppSettingsCache.getThemeMode(),
      initialRoute: AppPages.getInitialRoute(),
      getPages: AppPages.routes,
    ),
  );
}
