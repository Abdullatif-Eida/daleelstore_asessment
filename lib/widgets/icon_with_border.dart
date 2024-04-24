import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:flutter/material.dart';

class IconWithBorder extends StatelessWidget {
  final String icon;
  final Color color;

  const IconWithBorder({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        CircleAvatar(
          radius: 19,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: color,
            child: SVGImage.loadImage(
              assetPath: icon,
              height: 25,
              width: 25,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
