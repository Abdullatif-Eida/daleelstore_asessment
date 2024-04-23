import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class IconWithBadge extends StatelessWidget {
  final String icon;
  final String badgeNumber;
  final Color color;

  const IconWithBadge({super.key, required this.icon, required this.badgeNumber, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        CircleAvatar(
          radius: 18,
          backgroundColor: color,
          child: SVGImage.loadImage(
            assetPath: icon,
            height: 25,
            width: 25,
            color: AppColors.white,
          ),
        ),
        Positioned(
          right: -10.0,
          top: -10.0,
          child: CircleAvatar(
            radius: 11,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 9,
              child: Text(badgeNumber, style: TextStyles.smallBody.copyWith(color: AppColors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
