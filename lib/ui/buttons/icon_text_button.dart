import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/radiuses/border_radius.dart';
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color? textColor;
  final Color? iconColor;
  final double? textSize;
  final double? iconSize;

  const IconTextButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.buttonColor,
    this.textColor,
    this.iconColor,
    this.textSize,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: buttonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: AppBorderRadius.iconTextButton,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Use min to prevent stretching
        children: [
          Icon(icon, color: iconColor ?? AppColors.black, size: iconSize ?? 10),
          const SizedBox(width: 8), // Space between icon and text
          Text(
            text,
            style: TextStyle(
              color: textColor ?? AppColors.black,
              fontSize: textSize ?? 8,
            ),
          ),
        ],
      ),
    );
  }
}
