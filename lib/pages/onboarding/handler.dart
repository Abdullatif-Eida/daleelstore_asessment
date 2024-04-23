import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/controllers/onboarding_controller.dart';
import 'package:daleelstore_asessment/pages/onboarding/pages/walkthrough_page1.dart';
import 'package:daleelstore_asessment/pages/onboarding/pages/walkthrough_page2.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:daleelstore_asessment/ui/images/app_svg_images.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/widgets/custom_background_decoration.dart';
import 'package:daleelstore_asessment/widgets/onboarding/destination_widget.dart';
import 'package:daleelstore_asessment/widgets/onboarding/navigation_footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingPages extends GetView<OnboardingController> {
  const OnboardingPages({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (_) {
        Get.back();
      },
      child: CupertinoPageScaffold(
        child: FadeIn(
          child: Obx(() {
            return CustomBackgroundDecoration(
              imagePath: controller.selectedDestination.value == 1 ? AppImages.background1 : AppImages.background2,
              child: Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: Spacing.lg),
                      SlideInDown(child: SVGImage.loadImage(assetPath: AppSvgImages.logo)),
                      const SizedBox(height: Spacing.sm),
                      Expanded(child: getPage(controller.selectedDestination.value)),
                      const NavigationFooter()
                    ],
                  ),
                  const DestinationWidget(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

Widget getPage(int index) {
  switch (index) {
    case 0:
      return const WalkthroughPage1();
    case 1:
      return const WalkthroughPage2();
    default:
      return const SizedBox();
  }
}
