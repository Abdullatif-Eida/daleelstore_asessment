import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:daleelstore_asessment/ui/images/asset_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/utils/language_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WalkthroughPage2 extends StatelessWidget {
  const WalkthroughPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Bounce(from: 10, child: ImageAsset.loadImage(assetPath: AppImages.phone2, height: 609.14, width: 913.6, fit: BoxFit.contain)),
              Positioned.directional(
                start: 0,
                bottom: -120,
                textDirection: Directionality.of(context),
                child: ShakeY(
                  from: 0.3,
                  infinite: true,
                  child: ImageAsset.loadImage(assetPath: AppImages.gift, height: 550, fit: BoxFit.contain),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LanguageUtils.localize("sendYourGiftNow"),
              style: TextStyles.headline,
            ),
            const SizedBox(height: Spacing.xs),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: Spacing.lg),
              child: Text(
                LanguageUtils.localize("sendYourGiftNowDescription"),
                style: TextStyles.mediumBody,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
