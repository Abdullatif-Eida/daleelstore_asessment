import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/controllers/home_controller.dart';
import 'package:daleelstore_asessment/pages/main_page.dart';
import 'package:daleelstore_asessment/pages/wallet_page.dart';
import 'package:daleelstore_asessment/widgets/home/bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
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
