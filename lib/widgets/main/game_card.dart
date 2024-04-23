import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/network_image.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class GameCardWidget extends StatelessWidget {
  const GameCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 357,
      width: 217,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(13, 13, 0, 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ImageNetwork.loadImage(
                    imageUrl:
                        "https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/best_seller.png?alt=media&token=7c4fbd8a-a17d-4c49-915c-78ceb1766118",
                    dimensions: 259)),
            const SizedBox(height: Spacing.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('بطاقات البلايستيشن', style: TextStyles.mediumBody),
                const SizedBox(height: Spacing.xs - 4),
                Row(
                  children: [
                    SVGImage.loadImage(assetPath: AppSvgIcons.arrowRight, color: AppColors.primaryBase),
                    const SizedBox(width: Spacing.xs - 4),
                    Text('عرض كل البطاقات', style: TextStyles.mediumBody.copyWith(color: AppColors.primaryBase, fontWeight: FontWeight.w600)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
