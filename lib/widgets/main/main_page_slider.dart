import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/images/network_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPageSlider extends StatelessWidget {
  const MainPageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    final MainController controller = Get.find();
    return Column(
      children: [
        SizedBox(
          height: 236,
          child: PageView.builder(
              itemCount: 1,
              controller: pageController,
              itemBuilder: (conetxt, index) {
                return SizedBox(
                  height: 174,
                  child: ClipRRect(borderRadius: BorderRadius.circular(20), child: ImageNetwork.loadImage(imageUrl: controller.mainSlider)),
                );
              }),
        ),
        const SizedBox(height: Spacing.md - 4),
        Center(
          child: SmoothPageIndicator(
            controller: pageController,
            count: 1,
            effect: ExpandingDotsEffect(
              dotHeight: 7,
              activeDotColor: AppColors.primaryBase,
              dotWidth: 8,
              dotColor: AppColors.dark20,
              spacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}
