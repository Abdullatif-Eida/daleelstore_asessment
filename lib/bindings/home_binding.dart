import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/controllers/wallet_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.put<MainController>(MainController());
    Get.put<WalletController>(WalletController());
  }
}
