import 'package:daleelstore_asessment/constants/cache_keys.dart';
import 'package:daleelstore_asessment/routes/app_pages.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  RxBool isOnboardingDone = false.obs;
  @override
  void onInit() {
    super.onInit();
    _loadOnboardingStatus();
  }

  Future<void> _loadOnboardingStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isOnboardingDone.value = prefs.getBool(onboardingKey) ?? false;
  }

  String getRoute() {
    return isOnboardingDone.value ? Routes.WALLET : Routes.ONBOARDING;
  }
}
