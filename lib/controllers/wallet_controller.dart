import 'package:daleelstore_asessment/mocks/mockTransactions.dart';
import 'package:daleelstore_asessment/models/transaction.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';

class WalletController extends GetxController {
  RxList<Transaction> mockTransactions = <Transaction>[].obs;
  RxBool isExpanded = false.obs;
  final GlobalKey<SliderDrawerState> sliderDrawerKey = GlobalKey<SliderDrawerState>();

  @override
  void onReady() {
    getMockPaymnets();

    super.onReady();
  }

  void toggleTransactionExpansion(int index) {
    mockTransactions[index] = mockTransactions[index].copyWith(
      isExpanded: !mockTransactions[index].isExpanded,
    );
    mockTransactions.refresh();
  }

  getMockPaymnets() {
    mockTransactions.addAll(transactions);
  }
}
