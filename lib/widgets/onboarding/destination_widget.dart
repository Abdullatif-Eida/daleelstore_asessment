import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/controllers/onboarding_controller.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:daleelstore_asessment/ui/images/asset_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return buildDestinationWidget(context);
    });
  }

  Widget buildDestinationWidget(BuildContext context) {
    OnboardingController controller = Get.find();
    switch (controller.selectedDestination.value) {
      case 0:
        return Stack(
          children: [
            buildPositionedWidget(context, AppImages.topVector1, 120, isTop: true, isEnd: true),
            buildPositionedWidget(context, AppImages.bottomVector1, 170, isTop: false, isStart: true),
          ],
        );
      case 1:
        return Stack(
          children: [
            buildPositionedWidget(context, AppImages.topVector2, 120, isTop: true, isEnd: true, bounceInLeft: true),
            buildPositionedWidget(context, AppImages.bottomVector2, 70, isTop: false, isEnd: true, bounceInLeft: true),
            buildPositionedWidget(context, AppImages.bottomVector3, 80, isTop: false, isStart: true),
          ],
        );
      default:
        return Container();
    }
  }

  Widget buildPositionedWidget(BuildContext context, String assetPath, double height,
      {bool isTop = false, bool isEnd = false, bool isStart = false, bool bounceInLeft = false}) {
    return Positioned.directional(
      textDirection: Directionality.of(context),
      end: isEnd ? 0 : null,
      start: isStart ? 0 : null,
      top: isTop ? 0 : null,
      bottom: !isTop ? 0 : null,
      child: bounceInLeft
          ? BounceInLeft(child: ImageAsset.loadImage(assetPath: assetPath, height: height))
          : BounceInDown(child: ImageAsset.loadImage(assetPath: assetPath, height: height)),
    );
  }
}
