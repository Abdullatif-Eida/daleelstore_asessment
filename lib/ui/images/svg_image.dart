import 'package:daleelstore_asessment/ui/indicators/platform_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGImage {
  static Widget loadImage({
    BoxFit fit = BoxFit.cover,
    required String assetPath,
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgPicture.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      colorFilter: color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
      placeholderBuilder: (BuildContext context) => const Center(child: PlatformIndicator()),
    );
  }
}
