import 'package:daleelstore_asessment/constants/cache_keys.dart';
import 'package:daleelstore_asessment/routes/app_pages.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';

class OnboardingController extends GetxController {
  void preloadImages(BuildContext context) {
    precacheImage(const AssetImage(AppImages.background1), context);
    precacheImage(const AssetImage(AppImages.background2), context);
  }

  @override
  void onReady() {
    super.onReady();
    WidgetsBinding.instance.addPostFrameCallback((_) => preloadImages(Get.context!));
  }

  Future<void> _onboardingSaved() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(onboardingKey, true);
  }

  late AnimationController animationController;
  RxInt selectedDestination = 0.obs;
  int totalSteps = 2;
  void onNext() {
    if (selectedDestination.value < 2) {
      selectedDestination.value = (selectedDestination.value + 1) % totalSteps;
    } else {
      _onboardingSaved();
      Get.toNamed(Routes.HOME);
      Get.delete<OnboardingController>();
    }
  }

  void onBack() {
    if (selectedDestination.value != 0) {
      selectedDestination.value = (selectedDestination.value - 1) % totalSteps;
    }
  }
}
