import 'package:daleelstore_asessment/controllers/wallet_controller.dart';
import 'package:daleelstore_asessment/models/transaction.dart';
import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/svg_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/widgets/icon_with_border.dart';
import 'package:daleelstore_asessment/widgets/main/darawer.dart';
import 'package:daleelstore_asessment/widgets/main/section_title.dart';
import 'package:daleelstore_asessment/widgets/main/user_details_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';

class WalletPage extends GetView<WalletController> {
  const WalletPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.secondaryGreen,
      resizeToAvoidBottomInset: false,
      child: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! < 0) controller.changeSLiderStatus();
        },
        onTap: () => controller.closeSLider(),
        child: SliderDrawer(
          slideDirection: SlideDirection.RIGHT_TO_LEFT,
          appBar: null,
          slider: const DrawerWidget(),
          key: controller.sliderDrawerKey,
          child: Obx(
            () => CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: false,
                  elevation: 0,
                  expandedHeight: 330,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: _buildBalanceInfo(),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(0.0),
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
                const SliverToBoxAdapter(
                  child: SizedBox(height: Spacing.sm),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return controller.mockTransactions.isEmpty
                          ? const Center(child: Text("لا توجد بيانات"))
                          : Column(
                              children: [
                                _buildTransactionTile(index, controller),
                              ],
                            );
                    },
                    childCount: controller.mockTransactions.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBalanceInfo() {
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

  Widget _buildTransactionTile(int index, controller) {
    return Obx(() {
      final Transaction transaction = controller.mockTransactions[index];

      return GestureDetector(
        onTap: () {
          controller.toggleTransactionExpansion(index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          child: Container(
              padding: const EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x116E7588),
                    offset: Offset(1, 5),
                    blurRadius: 40.0,
                    spreadRadius: 8.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: transaction.isBuying ? AppColors.secondaryRed : AppColors.secondaryGreen,
                              child: SVGImage.loadImage(
                                assetPath: transaction.isBuying ? AppSvgIcons.outgoing : AppSvgIcons.sendMoney,
                                color: AppColors.white,
                                height: transaction.isBuying ? 22 : 30,
                                width: transaction.isBuying ? 22 : 30,
                              ),
                            ),
                            const SizedBox(width: Spacing.xs + 2),
                            Expanded(
                              child: Text(
                                transaction.description,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyles.mediumBody,
                              ),
                            ),
                            const SizedBox(width: Spacing.xs),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "137,8456 ريال",
                          style: TextStyles.mediumBody.copyWith(
                            color: transaction.isBuying ? AppColors.secondaryRed : AppColors.secondaryGreen,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                  AnimatedCrossFade(
                    firstChild: Container(),
                    secondChild: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: Spacing.sm,
                        ),
                        detailItem('تاريخ العملية', '24 - 11 - 2023'),
                        detailItem('رقم الطلب', 'MFB2732BCW7'),
                        detailItem('عدد النقاط', '50'),
                        detailItem('اسم البرنامج', 'برنامج أكثر'),
                      ],
                    ),
                    crossFadeState: transaction.isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 300),
                  ),
                ],
              )),
        ),
      );
    });
  }

  Widget detailItem(String label, String value) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), border: Border.all(width: 1, color: AppColors.dark20)),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyles.smallBody,
          ),
          Row(
            children: [
              if (label == 'عدد النقاط') SVGImage.loadImage(assetPath: AppSvgIcons.star),
              const SizedBox(width: Spacing.xs - 4),
              Text(
                value,
                style: label == 'عدد النقاط' ? TextStyles.smallBody.copyWith(color: AppColors.secondaryOrange) : TextStyles.smallBody,
              ),
            ],
          ),
        ],
      ),
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
        const SizedBox(height: Spacing.xs - 4),
        Text(
          label,
          style: TextStyles.smallBody.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
