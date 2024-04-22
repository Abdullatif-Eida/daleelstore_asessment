import 'package:daleelstore_asessment/bindings/main_binding.dart';
import 'package:daleelstore_asessment/bindings/onboarding_binding.dart';
import 'package:daleelstore_asessment/pages/main_page.dart';
import 'package:daleelstore_asessment/pages/onboarding/handler.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingPages(),
      binding: OnboardingBinding(),
    ),
  ];
}
