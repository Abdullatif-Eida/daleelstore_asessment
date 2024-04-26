import 'package:daleelstore_asessment/controllers/wallet_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/widgets/icon_with_border.dart';
import 'package:daleelstore_asessment/widgets/main/user_details_row.dart';
import 'package:daleelstore_asessment/widgets/wallet/transaction_button.dart';
import 'package:flutter/material.dart';

class BuildBalanceInfo extends StatelessWidget {
  const BuildBalanceInfo({
    super.key,
    required this.controller,
  });

  final WalletController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondaryGreen,
      padding: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserDetailsRow(
                  drawerIconColor: AppColors.white,
                  userNameSliderStyle: TextStyles.headline.copyWith(color: AppColors.white),
                  onTap: () => controller.changeSLiderStatus(),
                ),
                const Row(
                  children: [
                    IconWithBorder(icon: AppSvgIcons.bell, color: AppColors.secondaryGreen),
                    SizedBox(width: Spacing.xs + 2),
                    IconWithBorder(icon: AppSvgIcons.shop, color: AppColors.secondaryGreen)
                  ],
                ),
              ],
            ),
            const SizedBox(height: Spacing.lg),
            Container(
              width: 367,
              height: 184,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF2AB97E), // 100% opacity
                    Color(0x4D4ABC8D), // 65% opacity
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'الرصيد الحالي',
                      style: TextStyles.mediumBody.copyWith(color: AppColors.white, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '14,235.34 ريال',
                      style: TextStyles.largeHeadline.copyWith(fontSize: 30, color: AppColors.white, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: Spacing.sm),
                    const IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          TransactionButton(
                            icon: AppSvgIcons.add,
                            label: 'إضافة الأموال',
                            height: 20,
                            width: 20,
                          ),
                          VerticalDivider(
                            color: AppColors.white,
                            thickness: 2,
                          ),
                          TransactionButton(
                            icon: AppSvgIcons.gift,
                            label: 'إهداء الأموال',
                            height: 20,
                            width: 20,
                          ),
                          VerticalDivider(
                            color: AppColors.white,
                            thickness: 2,
                          ),
                          TransactionButton(
                            icon: AppSvgIcons.sendMoney,
                            label: 'طلب الأموال',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
