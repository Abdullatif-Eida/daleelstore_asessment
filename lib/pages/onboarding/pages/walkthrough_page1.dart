import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:daleelstore_asessment/ui/images/asset_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/utils/language_utils.dart';
import 'package:flutter/material.dart';

class WalkthroughPage1 extends StatelessWidget {
  const WalkthroughPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.directional(
                start: -6,
                top: 10,
                textDirection: Directionality.of(context),
                child: BounceInDown(
                  child: ImageAsset.loadImage(
                    assetPath: AppImages.ultraMalinaFilmsCard,
                  ),
                ),
              ),
              Positioned.directional(
                end: -5,
                bottom: 50,
                textDirection: Directionality.of(context),
                child: BounceInDown(
                  child: ImageAsset.loadImage(
                    assetPath: AppImages.playstationCard,
                  ),
                ),
              ),
              ShakeY(from: 5, child: ImageAsset.loadImage(assetPath: AppImages.phone1, height: 531, width: 427)),
              Positioned.directional(
                end: -5,
                top: 40,
                textDirection: Directionality.of(context),
                child: BounceInDown(
                  child: ImageAsset.loadImage(
                    assetPath: AppImages.aCard,
                  ),
                ),
              ),
              Positioned.directional(
                start: 10,
                bottom: 20,
                textDirection: Directionality.of(context),
                child: BounceInDown(
                  child: ImageAsset.loadImage(
                    assetPath: AppImages.noonCard,
                  ),
                ),
              ),
            ],
          ),
        ),
        SlideInUp(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LanguageUtils.localize("allProducts"),
                style: TextStyles.headline,
              ),
              const SizedBox(height: Spacing.xs),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: Spacing.lg),
                child: Text(
                  LanguageUtils.localize("allProductsDescription"),
                  style: TextStyles.mediumBody,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
