import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  final mySystemTheme = SystemUiOverlayStyle.light.copyWith(statusBarColor: AppColors.secondaryGreen, statusBarBrightness: Brightness.light);
  @override
  void onReady() {
    super.onReady();
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
  }
}
