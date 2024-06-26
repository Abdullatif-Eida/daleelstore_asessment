import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/images/app_images.dart';
import 'package:daleelstore_asessment/ui/images/network_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/widgets/custom_background_decoration.dart';
import 'package:daleelstore_asessment/widgets/main/darawer.dart';
import 'package:daleelstore_asessment/widgets/main/game_card.dart';
import 'package:daleelstore_asessment/widgets/main/main_page_content.dart';
import 'package:daleelstore_asessment/widgets/main/offer_card.dart';
import 'package:daleelstore_asessment/widgets/main/section_title.dart';
import 'package:daleelstore_asessment/widgets/main/top_products.dart';
import 'package:daleelstore_asessment/widgets/main/user_orders_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.primaryVelocity! < 0) controller.changeSLiderStatus();
      },
      onTap: () => controller.closeSLider(),
      child: CupertinoPageScaffold(
        child: SliderDrawer(
          slideDirection: SlideDirection.RIGHT_TO_LEFT,
          appBar: null,
          key: controller.sliderDrawerKey,
          slider: const DrawerWidget(),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                expandedHeight: 170,
                flexibleSpace: FlexibleSpaceBar(
                  background: ImageNetwork.loadImage(
                    imageUrl: controller.bannerImage,
                    fit: BoxFit.cover,
                  ),
                ),
                automaticallyImplyLeading: false,
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
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const MainPageContent(),
                    CustomBackgroundDecoration(
                      imagePath: AppImages.background,
                      fit: BoxFit.cover,
                      child: Column(
                        children: [
                          sectionWithTitle("اطلبها مجدداً", "طلباتي السابقة", const UserOrdersCard(), 10, 319),
                          sectionWithTitle("الاكثر مبيعاً", "مشاهدة الكل", const GameCardWidget(), 10, 387),
                          sectionWithTitle("البطاقات المخفضة", "مشاهدة الكل", const UserOrdersCard(isDiscounted: true), 10, 319),
                          sectionWithTitle("احدث المنتجات", "مشاهدة الكل", const TopProducts(), 10, 240),
                          sectionWithTitle("استبدل نقاطك", "مشاهدة الكل", const UserOrdersCard(isRedeemableByCards: true), 10, 319),
                          sectionWithTitle("عروض الشركاء", "مشاهدة الكل", const OfferCard(), 10, 240),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
