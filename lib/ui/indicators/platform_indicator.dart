import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformIndicator extends StatelessWidget {
  const PlatformIndicator({super.key, this.size = 30.0});

  final double size;

  @override
  Widget build(BuildContext context) {
    // Check the platform
    if (Platform.isIOS) {
      // Return a CupertinoActivityIndicator for iOS
      return CupertinoActivityIndicator(radius: size / 2);
    } else {
      // Return a CircularProgressIndicator for Android and other platforms
      return SizedBox(
        width: size,
        height: size,
        child: const CircularProgressIndicator(),
      );
    }
  }
}
