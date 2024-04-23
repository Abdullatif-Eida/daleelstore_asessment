import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/images/network_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FamousGamesRow extends StatelessWidget {
  const FamousGamesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();
    return Row(
      children: [
        GameImage(image: controller.pub),
        const SizedBox(width: Spacing.sm),
        GameImage(image: controller.lol),
      ],
    );
  }
}

class GameImage extends StatelessWidget {
  const GameImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 174,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ImageNetwork.loadImage(imageUrl: image),
        ),
      ),
    );
  }
}
