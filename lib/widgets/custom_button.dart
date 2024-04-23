import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final String? icon;
  final Color color, textColor;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? containerWidth;
  final double? padding;
  final String? nextToIconText;
  final TextStyle? style;
  const CustomButton({
    super.key,
    this.text,
    this.height,
    this.width,
    this.icon,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.padding,
    this.nextToIconText,
    this.containerWidth,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: containerWidth,
        padding: EdgeInsets.all(padding ?? 0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: icon == null && text != null
            ? Center(
                child: Text(
                  text!,
                  textAlign: TextAlign.center,
                  style: style ?? TextStyles.mediumBody.copyWith(fontSize: 15, color: textColor, fontWeight: FontWeight.w500),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: nextToIconText != null ? MainAxisAlignment.spaceAround : MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (text != null)
                    Center(
                      child: Text(
                        text!,
                        textAlign: TextAlign.center,
                        style: TextStyles.mediumBody.copyWith(fontSize: 15, color: textColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                  Row(
                    children: [
                      if (nextToIconText != null)
                        Text(
                          nextToIconText!,
                          style: TextStyles.smallBody.copyWith(fontSize: 12, color: textColor, fontWeight: FontWeight.w500),
                        ),
                      const SizedBox(width: Spacing.xs - 4),
                      if (icon != null) SVGImage.loadImage(assetPath: icon!, color: textColor, height: height, width: width, fit: BoxFit.contain),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
