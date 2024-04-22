import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/controllers/onboarding_controller.dart';
import 'package:daleelstore_asessment/pages/onboarding/pages/walkthrough_page1.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/app_icons.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:daleelstore_asessment/ui/images/asset_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/widgets/onboarding/destination_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(child: getPage(controller.selectedDestination.value)),
                    SlideInUp(
                      child: Column(
                        children: [
                          const SizedBox(height: Spacing.md),
                          GestureDetector(
                            onTap: () => controller.onNext(),
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: AppColors.primaryBase,
                              child: Icon(
                                AppIcons.chevronRight,
                                color: AppColors.white,
                                size: 25,
                              ),
                            ),
                          ),
                          const SizedBox(height: Spacing.md),
                          AnimatedSmoothIndicator(
                            activeIndex: controller.selectedDestination.value,
                            count: 2,
                            effect: const ExpandingDotsEffect(
                              dotHeight: 5,
                              activeDotColor: AppColors.primaryBase,
                              dotWidth: 10,
                            ),
                          ),
                          const SizedBox(height: Spacing.md),
                        ],
                      ),
                    )
                  ],
                ),
                DestinationWidget(selectedValue: controller.selectedDestination.value),
              ],
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
      return const WalkthroughPage1();
    default:
      return const SizedBox();
  }
}
