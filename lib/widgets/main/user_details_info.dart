import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/widgets/main/icon_with_badge.dart';
import 'package:daleelstore_asessment/widgets/main/loyalty_widget.dart';
import 'package:flutter/material.dart';

class UserDetailsInfo extends StatelessWidget {
  const UserDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LoyaltyWidget(),
        Row(
          children: [
            IconWithBadge(
              icon: AppSvgIcons.bell,
              badgeNumber: '1',
              color: AppColors.primaryBase,
            ),
            SizedBox(width: Spacing.xs + 2), // Spacing between the icons
            IconWithBadge(
              icon: AppSvgIcons.shop,
              badgeNumber: '2',
              color: AppColors.secondaryRed,
            ),
          ],
        ),
      ],
    );
  }
}
