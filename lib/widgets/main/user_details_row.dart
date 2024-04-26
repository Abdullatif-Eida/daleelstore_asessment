import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/app_icons.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailsRow extends StatelessWidget {
  final Color? drawerIconColor;
  final TextStyle? userNameSliderStyle;
  final Function() onTap;
  const UserDetailsRow({super.key, this.drawerIconColor, this.userNameSliderStyle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Icon(
            AppIcons.menue1,
            color: drawerIconColor ?? AppColors.black,
          ),
        ),
        const SizedBox(width: Spacing.xs),
        CircleAvatar(
          backgroundImage: NetworkImage(controller.useLogo),
        ),
        const SizedBox(width: Spacing.xs),
        Text(
          "خالد عليان",
          style: userNameSliderStyle ?? TextStyles.headline,
        ),
      ],
    );
  }
}
