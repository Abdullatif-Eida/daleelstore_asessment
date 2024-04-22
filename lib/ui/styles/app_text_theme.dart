import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class AppTextTheme {
  static CupertinoTextThemeData getCupertinoTextTheme() {
    return CupertinoTextThemeData(
      textStyle: TextStyles.mediumBody,
      actionTextStyle: TextStyles.smallBody,
      tabLabelTextStyle: TextStyles.subHeadline,
      navTitleTextStyle: TextStyles.headline,
      navLargeTitleTextStyle: TextStyles.largeHeadline,
      navActionTextStyle: TextStyles.smallBody,
      pickerTextStyle: TextStyles.mediumBody,
      dateTimePickerTextStyle: TextStyles.largeBody,
    );
  }
}
