import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/controllers/wallet_controller.dart';
import 'package:get/get.dart';

class WalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WalletController>(
      () => WalletController(),
    );

    Get.put<WalletController>(
      WalletController(),
    );
  }
}
