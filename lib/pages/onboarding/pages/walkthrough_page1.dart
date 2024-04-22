import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:flutter/material.dart';

class WalkthroughPage1 extends StatelessWidget {
  const WalkthroughPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background1),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(),
    );
  }
}
