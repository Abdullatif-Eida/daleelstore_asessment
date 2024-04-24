import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/widgets/icon_with_border.dart';
import 'package:daleelstore_asessment/widgets/main/section_title.dart';
import 'package:daleelstore_asessment/widgets/main/user_details_row.dart';
import 'package:daleelstore_asessment/widgets/wallet/cupertino_transaction_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletPage extends GetView<MainController> {
  const WalletPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: false,
              elevation: 0,
              expandedHeight: 330,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: _buildBalanceInfo(),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(280.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  ),
                  height: 30,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SectionTitle(mainText: "سجل العمليات", buttonText: "مشاهدة الكل"),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: [
                      _buildTransactionTile(index),
                    ],
                  );
                },
                childCount: 20, // Adjust number of transactions here
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Build Balance Information
  Widget _buildBalanceInfo() {
    return Container(
      color: AppColors.secondaryGreen,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserDetailsRow(
                drawerIconColor: AppColors.white,
                userNameSliderStyle: TextStyles.headline.copyWith(color: AppColors.white),
              ),
              Row(
                children: [
                  IconWithBorder(icon: AppSvgIcons.bell, color: AppColors.secondaryGreen),
                  SizedBox(width: Spacing.xs + 2),
                  IconWithBorder(icon: AppSvgIcons.shop, color: AppColors.secondaryGreen)
                ],
              ),
            ],
          ),
          SizedBox(height: Spacing.lg),
          Container(
            width: 367,
            height: 184,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
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
    );
  }

  Widget _buildTransactionTile(int index) {
    // Mock data for transaction, this should ideally come from a data source
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Row(children: [
        
      ],)
    );
  }
}

class TransactionButton extends StatelessWidget {
  final String icon;
  final String label;
  final double? width;
  final double? height;
  const TransactionButton({super.key, required this.icon, required this.label, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SVGImage.loadImage(assetPath: icon, color: AppColors.white, height: height, width: width),
        const SizedBox(height: Spacing.xs - 2),
        Text(
          label,
          style: TextStyles.smallBody.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
