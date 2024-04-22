import 'package:cached_network_image/cached_network_image.dart';
import 'package:daleelstore_asessment/ui/indicators/platform_indicator.dart';
import 'package:daleelstore_asessment/utils/image_utils.dart';
import 'package:flutter/material.dart';

class ImageNetwork {
  static Widget loadImage({
    BoxFit fit = BoxFit.cover,
    String? imageUrl,
    int? dimensions = 72,
  }) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? ImageUtils.getPlaceholder(dimensions!),
      fit: fit,
      placeholder: (context, url) => const Center(child: PlatformIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
