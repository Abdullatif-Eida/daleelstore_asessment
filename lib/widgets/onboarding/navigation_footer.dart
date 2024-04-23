import 'package:daleelstore_asessment/controllers/onboarding_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/app_icons.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NavigationFooter extends StatelessWidget {
  const NavigationFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      child: Column(
        children: [
          const SizedBox(height: Spacing.md),
          _buildNextButton(),
          const SizedBox(height: Spacing.md),
          _buildPageIndicator(),
          const SizedBox(height: Spacing.md),
        ],
      ),
    );
  }

  Widget _buildNextButton() {
    OnboardingController controller = Get.find();
    return ShakeY(
      infinite: true,
      from: 0.3,
      child: GestureDetector(
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
    );
  }

  Widget _buildPageIndicator() {
    OnboardingController controller = Get.find();
    return Obx(() {
      return AnimatedSmoothIndicator(
        activeIndex: controller.selectedDestination.value,
        count: 2,
        effect: ExpandingDotsEffect(
          dotHeight: 7,
          activeDotColor: AppColors.primaryBase,
          dotWidth: 8,
          dotColor: AppColors.dark20,
          spacing: 5,
        ),
      );
    });
  }
}
