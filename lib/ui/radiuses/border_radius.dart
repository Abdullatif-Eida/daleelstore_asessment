import 'package:flutter/material.dart';

class AppBorderRadius {
  static const double smallDouble = 6;
  static const double mediumDouble = 12;
  static const double largeouble = 16;
  static const double extraLargeouble = 24;

  static const BorderRadius small = BorderRadius.all(Radius.circular(6));
  static const BorderRadius medium = BorderRadius.all(Radius.circular(12));
  static const BorderRadius large = BorderRadius.all(Radius.circular(16));
  static const BorderRadius extraLarge = BorderRadius.all(Radius.circular(24));
  static const BorderRadius iconTextButton = BorderRadius.all(Radius.circular(26));
  // Customizable BorderRadius for specific cases
  static BorderRadius custom(double radius) {
    return BorderRadius.all(Radius.circular(radius));
  }
}
