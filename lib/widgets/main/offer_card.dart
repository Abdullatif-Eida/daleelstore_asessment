import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 213,
      padding: const EdgeInsets.all(11.0),
      margin: const EdgeInsets.fromLTRB(13, 13, 0, 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primaryBase,
              backgroundImage: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/a_nrand.png?alt=media&token=e94a943d-57e3-4709-b9ab-17ce79d6ba0a'),
            ),
          ),
          Text("كوبون فوغا كلوسيت", textAlign: TextAlign.center, style: TextStyles.mediumBody.copyWith(fontSize: 15)),
          const SizedBox(height: Spacing.xs),
          Text("خصم يصل الي 30%", textAlign: TextAlign.center, style: TextStyles.mediumBody.copyWith(color: AppColors.textGrey)),
          const SizedBox(height: Spacing.md - 4),
          CustomButton(
            text: "كود الخصم",
            containerWidth: 192,
            style: TextStyles.smallBody.copyWith(fontSize: 13, color: AppColors.white),
            padding: 4,
            color: AppColors.secondaryGreen,
            textColor: Colors.white,
            onPressed: () {
              // Implement Pay button logic
            },
          ),
        ],
      ),
    );
  }
}
