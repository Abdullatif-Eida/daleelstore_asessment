import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late AnimationController animationController;
  RxInt selectedDestination = 0.obs;

  void onDestinationChanged(int value) {
    selectedDestination.value = value;
  }
}
