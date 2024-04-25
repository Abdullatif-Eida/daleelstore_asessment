import 'package:daleelstore_asessment/controllers/home_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      height: 97,
      decoration: BoxDecoration(
          color: AppColors.bottomNavigationColor,
          border: Border.all(
            color: AppColors.bottomNavigationColorBorder, // The color code for the border
            width: 1, // The width of the border
          ),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavigationItem(
            text: "الرئيسية",
            icon: AppSvgIcons.home,
            onTap: () => controller.selectedDestination(0),
            tabNumber: 0,
          ),
          BottomNavigationItem(
            text: "التصنيفات",
            icon: AppSvgIcons.categories,
            onTap: () => controller.selectedDestination(1),
            tabNumber: 1,
          ),
          BottomNavigationItem(
            text: "محفظتي",
            icon: AppSvgIcons.wallet1,
            onTap: () => controller.selectedDestination(2),
            tabNumber: 2,
          ),
          BottomNavigationItem(
            text: "طلباتي",
            icon: AppSvgIcons.myOrders,
            onTap: () => controller.selectedDestination(3),
            tabNumber: 3,
          ),
          BottomNavigationItem(
            text: "حسابي",
            icon: AppSvgIcons.myAccount,
            onTap: () => controller.selectedDestination(4),
            tabNumber: 4,
          ),
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    this.iconColor,
    this.textColor,
    required this.tabNumber,
  });
  final String text;
  final String icon;
  final Color? iconColor;
  final Color? textColor;
  final int tabNumber;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Obx(() {
      return GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (controller.selectedDestination.value == tabNumber)
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(color: AppColors.primaryBase, shape: BoxShape.circle),
              ),
            const SizedBox(height: 4),
            SVGImage.loadImage(
                assetPath: icon,
                color: controller.selectedDestination.value == tabNumber ? AppColors.primaryBase : AppColors.bottomNavigationStyleColorBorder),
            const SizedBox(height: Spacing.xs),
            Text(text,
                style: TextStyles.smallBody.copyWith(
                  color: controller.selectedDestination.value == tabNumber ? AppColors.primaryBase : AppColors.bottomNavigationStyleColorBorder,
                )),
          ],
        ),
      );
    });
  }
}
