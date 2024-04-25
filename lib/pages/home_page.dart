import 'package:cached_network_image/cached_network_image.dart';
import 'package:daleelstore_asessment/controllers/home_controller.dart';
import 'package:daleelstore_asessment/pages/main_page.dart';
import 'package:daleelstore_asessment/pages/wallet_page.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/utils/language_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: true,
      onPopInvoked: (_) {
        Get.back();
      },
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.systemGrey6, // Similar to your design's background color
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'حسابي',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet),
              label: 'طلباتي',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag),
              label: 'محفظتي',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rectangle_grid_2x2),
              label: 'التقييمات',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell),
              label: 'الإشعارات',
            ),
          ],
          activeColor: CupertinoColors.activeBlue, // Active icon color
          inactiveColor: CupertinoColors.systemGrey, // Inactive icon color
          height: 97,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return MainPage();
                case 1:
                  return SizedBox();
                case 2:
                  return WalletPage();
                case 3:
                  return SizedBox();
                case 4:
                  return SizedBox();
                default:
                  assert(false, 'Unexpected tab');
                  return SizedBox.shrink();
              }
            },
          );
        },
        // child: IndexedStack(
        //   alignment: AlignmentDirectional.center,
        //   index: controller.selectedDestination.value,
        //   children: const [
        //     MainPage(),
        //     SizedBox(),
        //     WalletPage(),
        //     SizedBox(),
        //   ],
        // ),
        // bottomNavigationBar: NavigationBar(
        //   height: 66,
        //   elevation: 4,
        //   shadowColor: AppColors.black,
        //   surfaceTintColor: AppColors.black,
        //   onDestinationSelected: (value) {
        //     controller.onDestinationChanged(value);
        //   },
        //   indicatorShape: const CircleBorder(),
        //   backgroundColor: AppColors.bottomBarGrey,
        //   indicatorColor: const Color(0X00000000),
        //   labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        //   selectedIndex: controller.selectedDestination.value,
        //   destinations: [
        //     NavigationDestination(
        //       icon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: AppColors.grey),
        //       selectedIcon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: theme.colorScheme.secondary),
        //       label: LanguageUtils.localize("listen"),
        //     ),
        //     NavigationDestination(
        //       icon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: AppColors.grey),
        //       selectedIcon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: theme.colorScheme.secondary),
        //       label: LanguageUtils.localize("talk"),
        //     ),
        //     NavigationDestination(
        //       icon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: AppColors.grey),
        //       selectedIcon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: theme.colorScheme.secondary),
        //       label: LanguageUtils.localize("create"),
        //     ),
        //     NavigationDestination(
        //       icon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: AppColors.grey),
        //       selectedIcon: SVGImage.loadImage(assetPath: AppSvgIcons.sendMoney, color: theme.colorScheme.secondary),
        //       label: LanguageUtils.localize("library"),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
