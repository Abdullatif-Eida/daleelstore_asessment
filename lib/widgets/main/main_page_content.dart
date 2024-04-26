import 'package:daleelstore_asessment/controllers/main_controller.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/widgets/main/category_raw.dart';
import 'package:daleelstore_asessment/widgets/main/famous_game_row.dart';
import 'package:daleelstore_asessment/widgets/main/main_page_slider.dart';
import 'package:daleelstore_asessment/widgets/main/search_bar.dart';
import 'package:daleelstore_asessment/widgets/main/user_details_info.dart';
import 'package:daleelstore_asessment/widgets/main/user_details_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainPageContent extends StatelessWidget {
  const MainPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.find();

    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Column(
        children: [
          UserDetailsRow(
            onTap: () => controller.changeSLiderStatus(),
          ),
          verticalSpacing(Spacing.xs),
          const UserDetailsInfo(),
          verticalSpacing(Spacing.lg),
          const SearchBarWidget(),
          verticalSpacing(Spacing.lg + 10),
          const CategoryRowWidget(),
          verticalSpacing(Spacing.xl - 8),
          const MainPageSlider(),
          verticalSpacing(Spacing.xl - 6),
          const FamousGamesRow(),
          verticalSpacing(Spacing.xl - 6),
        ],
      ),
    );
  }

  Widget verticalSpacing(double height) => SizedBox(height: height);
}
