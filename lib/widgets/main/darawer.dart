import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text("القائمة الرئيسية", style: TextStyles.subHeadline.copyWith(color: AppColors.primaryBase, fontWeight: FontWeight.w700)),
          ),
          const DrawerLisTile(title: "سلتي", icon: AppSvgIcons.shop),
          const DrawerLisTile(title: "الطلبات السابقة", icon: AppSvgIcons.myOrders),
          const DrawerLisTile(title: "عن دليل ستور", icon: AppSvgIcons.about),
          const DrawerLisTile(title: "نظام دليل ستارز", icon: AppSvgIcons.drawerStar),
          const DrawerLisTile(title: "اختيار اللغة", icon: AppSvgIcons.translate),
          const DrawerLisTile(
            title: "الوضع المظلم",
            icon: AppSvgIcons.moon,
            isSwitchNedded: true,
          ),
          const DrawerLisTile(title: "الاعدادات", icon: AppSvgIcons.settings),
          const DrawerLisTile(title: "الدعم الفني", icon: AppSvgIcons.info),
        ],
      ),
    );
  }
}

class DrawerLisTile extends StatelessWidget {
  const DrawerLisTile({
    super.key,
    required this.title,
    required this.icon,
    this.isSwitchNedded,
  });
  final String title;
  final String icon;
  final bool? isSwitchNedded;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SVGImage.loadImage(assetPath: icon, color: AppColors.darkBase, height: 25, width: 25),
              const SizedBox(width: Spacing.xs + 4),
              Text(title, style: TextStyles.mediumBody.copyWith(color: AppColors.darkBase, fontWeight: FontWeight.w600)),
            ],
          ),
          if (isSwitchNedded == true)
            SizedBox(
              height: 36,
              width: 20,
              child: Transform.scale(
                scale: 0.7,
                child: Switch(
                  value: true,
                  onChanged: (bool value) {},
                  activeThumbImage: new NetworkImage('https://lists.gnu.org/archive/html/emacs-devel/2015-10/pngR9b4lzUy39.png'),
                  inactiveThumbImage: new NetworkImage('http://wolfrosch.com/_img/works/goodies/icon/vim@2x'),
                ),
              ),
            ),
          if (isSwitchNedded != true) SVGImage.loadImage(assetPath: icon, color: AppColors.darkBase, height: 25, width: 25),
        ],
      ),
    );
  }
}
