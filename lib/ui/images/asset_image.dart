import 'package:flutter/material.dart';

class ImageAsset {
  static Widget loadImage({
    BoxFit fit = BoxFit.cover,
    required String assetPath,
    double? width,
    double? height,
    final Color? color,
  }) {
    return Image.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      color: color,
      errorBuilder: (context, error, stackTrace) {
        return const Center(
          child: Icon(Icons.error),
        );
      },
    );
  }
}
