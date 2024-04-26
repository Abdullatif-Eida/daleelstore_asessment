import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class TransactionButton extends StatelessWidget {
  final String icon;
  final String label;
  final double? width;
  final double? height;
  const TransactionButton({super.key, required this.icon, required this.label, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SVGImage.loadImage(assetPath: icon, color: AppColors.white, height: height, width: width),
        const SizedBox(height: Spacing.xs - 4),
        Text(
          label,
          style: TextStyles.smallBody.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
