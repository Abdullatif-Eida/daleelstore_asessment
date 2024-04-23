import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/app_icons.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: 'بطاقة يلا لودو',
      suffix: const Padding(
        padding: EdgeInsets.all(Spacing.xs + 2),
        child: Icon(AppIcons.search, color: AppColors.black),
      ),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(25.0),
      ),
      style: TextStyles.mediumBody,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      clearButtonMode: OverlayVisibilityMode.editing,
    );
  }
}
