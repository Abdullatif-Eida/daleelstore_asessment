import 'package:daleelstore_asessment/models/categories_list_model.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';

class MainController extends GetxController with WidgetsBindingObserver {
  String bannerImage =
      "https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/main_page_banner_image.png?alt=media&token=64541943-b876-4e1e-9849-62fd5f171317";
  String useLogo =
      'https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/image%2023.png?alt=media&token=bf9e476b-54a6-4c56-a9b7-c5ce986173cb';
  String mainSlider =
      "https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/gift-cards-background-image-desktop-03-de-12apr22.png?alt=media&token=4d122d52-cbfc-43ba-aff5-f9c78c7983ae";
  String pub = "https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/pub.png?alt=media&token=a30596a1-4158-4ba9-8163-2a9b9545c944";
  String lol = "https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/lol.png?alt=media&token=cfd592f3-c3d8-4b53-958c-c9fcbcf8824a";

  List<CategoriesListModel> categories = [
    CategoriesListModel(iconPath: AppSvgIcons.buy, label: "منصات شراء"),
    CategoriesListModel(iconPath: AppSvgIcons.ecommerce, label: "متاجر رقمية"),
    CategoriesListModel(iconPath: AppSvgIcons.game, label: "منصات الألعاب"),
    CategoriesListModel(iconPath: AppSvgIcons.shopBag, label: "التسوق"),
    CategoriesListModel(iconPath: AppSvgIcons.data, label: "الاتصال والبيانات"),
  ];
  @override
  void onInit() async {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }

  final GlobalKey<SliderDrawerState> sliderDrawerKey = GlobalKey<SliderDrawerState>();

  void changeSLiderStatus() {
    if (sliderDrawerKey.currentState!.isDrawerOpen) {
      sliderDrawerKey.currentState!.closeSlider();
    } else {
      sliderDrawerKey.currentState!.openSlider();
    }
  }

  void closeSLider() {
    sliderDrawerKey.currentState!.closeSlider();
  }
}
