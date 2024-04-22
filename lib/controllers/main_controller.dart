import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController with WidgetsBindingObserver {
  @override
  void onInit() async {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }
}
