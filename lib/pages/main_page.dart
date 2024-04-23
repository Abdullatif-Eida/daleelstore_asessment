import 'package:animate_do/animate_do.dart';
import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/widgets/main/game_card.dart';
import 'package:daleelstore_asessment/widgets/main/main_page_content.dart';
import 'package:daleelstore_asessment/widgets/main/offer_card.dart';
import 'package:daleelstore_asessment/widgets/main/section_title.dart';
import 'package:daleelstore_asessment/widgets/main/top_products.dart';
import 'package:daleelstore_asessment/widgets/main/user_orders_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                controller.bannerImage,
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(115.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                height: 30,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BounceInUp(
              child: Column(
                children: [
                  const MainPageContent(),
                  sectionWithTitle("اطلبها مجدداً", "طلباتي السابقة", const UserOrdersCard(), 10, 319),
                  sectionWithTitle("الاكثر مبيعاً", "مشاهدة الكل", const GameCardWidget(), 10, 387),
                  sectionWithTitle("البطاقات المخفضة", "مشاهدة الكل", const UserOrdersCard(isDiscounted: true), 10, 319),
                  sectionWithTitle("احدث المنتجات", "مشاهدة الكل", const TopProducts(), 10, 240),
                  sectionWithTitle("استبدل نقاطك", "مشاهدة الكل", const UserOrdersCard(isRedeemableByCards: true), 10, 319),
                  sectionWithTitle("عروض الشركاء", "مشاهدة الكل", const OfferCard(), 10, 240),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionWithTitle(String mainText, String buttonText, Widget child, int itemCount, double itemHeight) {
    return Column(
      children: [
        SectionTitle(mainText: mainText, buttonText: buttonText),
        buildHorizontalListView(child, itemCount, itemHeight),
        verticalSpacing(Spacing.xl - 6),
      ],
    );
  }

  Widget verticalSpacing(double height) => SizedBox(height: height);

  Widget buildHorizontalListView(Widget child, int itemCount, double height) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (_, index) => child,
      ),
    );
  }
}
