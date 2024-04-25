import 'package:daleelstore_asessment/bindings/home_binding.dart';
import 'package:daleelstore_asessment/bindings/main_binding.dart';
import 'package:daleelstore_asessment/bindings/onboarding_binding.dart';
import 'package:daleelstore_asessment/bindings/wallet_binding.dart';
import 'package:daleelstore_asessment/controllers/login_controller.dart';
import 'package:daleelstore_asessment/pages/home_page.dart';
import 'package:daleelstore_asessment/pages/main_page.dart';
import 'package:daleelstore_asessment/pages/onboarding/handler.dart';
import 'package:daleelstore_asessment/pages/wallet_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static LoginController controller = Get.find();

  static String getInitialRoute() {
    return controller.getRoute();
  }

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingPages(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => const WalletPage(),
      binding: WalletBinding(),
    ),
  ];
}
