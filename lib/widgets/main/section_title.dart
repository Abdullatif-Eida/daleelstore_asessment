import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String mainText;
  final String buttonText;
  const SectionTitle({
    super.key,
    required this.mainText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText,
            style: TextStyles.headline,
          ),
          Text(buttonText, style: TextStyles.mediumBody.copyWith(color: AppColors.primaryBase, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
