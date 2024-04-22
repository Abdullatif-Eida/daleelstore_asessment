import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/controllers/onboarding_controller.dart';
import 'package:daleelstore_asessment/pages/onboarding/pages/walkthrough_page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingPages extends GetView<OnboardingController> {
  const OnboardingPages({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PopScope(
        canPop: true,
        onPopInvoked: (_) {
          Get.back();
        },
        child: CupertinoPageScaffold(
          child: FadeIn(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 111, 65, 209), // Replace with the top gradient color
                    Color(0xFF503B7B), // Replace with the bottom gradient color
                  ],
                ),
              ),
              child: GestureDetector(
                  onHorizontalDragEnd: (details) {
                    if (details.primaryVelocity! > 0) {
                      controller.onBack();
                    } else if (details.primaryVelocity! < 0) {
                      controller.onNext();
                    }
                  },
                  child: getPage(controller.selectedDestination.value)),
            ),
          ),
        ),
      );
    });
  }
}

Widget getPage(int index) {
  switch (index) {
    case 0:
      return const WalkthroughPage1();
    case 1:
      return const SizedBox();
    default:
      return const SizedBox();
  }
}
