import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:daleelstore_asessment/controllers/home_controller.dart';
import 'package:daleelstore_asessment/pages/main_page.dart';
import 'package:daleelstore_asessment/pages/onboarding/handler.dart';
import 'package:daleelstore_asessment/pages/wallet_page.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/utils/language_utils.dart';
import 'package:daleelstore_asessment/widgets/custom_background_decoration.dart';
import 'package:daleelstore_asessment/widgets/home/bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (_) {
        Get.back();
      },
      child: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        child: FadeIn(
          child: Obx(() {
            return Column(
              children: [
                Expanded(
                  child: IndexedStack(
                    alignment: AlignmentDirectional.center,
                    index: controller.selectedDestination.value,
                    children: const [
                      MainPage(),
                      SizedBox(),
                      WalletPage(),
                      SizedBox(),
                      SizedBox(),
                    ],
                  ),
                ),
                KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
                  return isKeyboardVisible == true ? Container() : const BottomNavbar();
                }),
              ],
            );
          }),
        ),
      ),
    );
  }
}

Widget getPage(int index) {
  switch (index) {
    case 0:
      return const MainPage();
    case 2:
      return const WalletPage();
    default:
      return const SizedBox();
  }
}
