import 'package:auto_size_text/auto_size_text.dart';
import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CategoryRowWidget extends StatelessWidget {
  const CategoryRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "تصنيفات المنتجات",
          style: TextStyles.headline,
        ),
        const SizedBox(height: Spacing.sm),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(controller.categories.length, (index) {
            final item = controller.categories[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.grey,
                  child: SvgPicture.asset(item.iconPath),
                ),
                const SizedBox(height: Spacing.sm - 3),
                AutoSizeText(
                  item.label,
                  maxFontSize: 10,
                  minFontSize: 8,
                  style: TextStyles.smallBody.copyWith(color: AppColors.darkBase),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
