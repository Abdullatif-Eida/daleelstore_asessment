import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class LoyaltyWidget extends StatelessWidget {
  const LoyaltyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SVGImage.loadImage(assetPath: AppSvgIcons.wallet1, color: AppColors.secondaryGreen),
        const SizedBox(width: Spacing.xs - 2),
        Text(
          "200 ريال",
          style: TextStyles.mediumBody.copyWith(color: AppColors.secondaryGreen),
        ),
        const SizedBox(width: Spacing.xs),
        SVGImage.loadImage(assetPath: AppSvgIcons.star, color: AppColors.secondaryRed),
        const SizedBox(width: Spacing.xs - 2),
        Text(
          "100 نقطة",
          style: TextStyles.mediumBody.copyWith(color: AppColors.secondaryRed),
        ),
      ],
    );
  }
}
