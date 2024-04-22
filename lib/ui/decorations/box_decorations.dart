import 'package:flutter/material.dart';

class BoxDecorations {
  static BoxDecoration roundedCorners({Color? color, double radius = 10.0, Border? border}) {
    return BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(radius),
      border: border,
    );
  }

  static BoxDecoration shadow({
    Color? color,
    Offset offset = const Offset(0, 2),
    double blurRadius = 6.0,
  }) {
    return BoxDecoration(
      color: color ?? Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          offset: offset,
          blurRadius: blurRadius,
        ),
      ],
    );
  }

  static BoxDecoration gradientBackground(List<Color> colors,
      [AlignmentGeometry begin = Alignment.topCenter, AlignmentGeometry end = Alignment.bottomCenter]) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: begin,
        end: end,
        colors: colors,
      ),
    );
  }
}
