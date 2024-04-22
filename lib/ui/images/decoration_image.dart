import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DecorationImageSystem {
  static DecorationImage networkImage(String url, {BoxFit fit = BoxFit.cover}) {
    return DecorationImage(
      image: CachedNetworkImageProvider(url),
      fit: fit,
    );
  }

  static DecorationImage assetImage(String assetName, {BoxFit fit = BoxFit.cover}) {
    return DecorationImage(
      image: AssetImage(assetName),
      fit: fit,
    );
  }
}
