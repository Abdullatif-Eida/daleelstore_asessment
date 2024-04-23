import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:daleelstore_asessment/ui/icons/svg_icons.dart';
import 'package:daleelstore_asessment/ui/images/network_image.dart';
import 'package:daleelstore_asessment/ui/styles/spacing.dart';
import 'package:daleelstore_asessment/ui/styles/text_styles.dart';
import 'package:daleelstore_asessment/utils/image_utils.dart';
import 'package:daleelstore_asessment/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class UserOrdersCard extends StatelessWidget {
  final bool? isDiscounted;
  final bool? isRedeemableByCards;
  const UserOrdersCard({super.key, this.isDiscounted, this.isRedeemableByCards});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 319,
      width: 217,
      padding: const EdgeInsets.all(11.0),
      margin: const EdgeInsets.fromLTRB(13, 13, 0, 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ClipRRect(borderRadius: BorderRadius.circular(8), child: ImageNetwork.loadImage(imageUrl: ImageUtils.getPlaceholder(193, 124))),
          const SizedBox(height: Spacing.sm),
          Row(
            children: [
              Expanded(flex: 3, child: Text('بطاقات iTunes', style: TextStyles.subHeadline)),
              Expanded(
                child: Text(
                  '\$20',
                  style: TextStyles.subHeadline,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: 13,
                height: 13,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFe0f2f1),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/masjidi-cab0a.appspot.com/o/flag.png?alt=media&token=e1cf8335-e2ea-459b-9a11-266aed49ce56"))),
              ),
              const SizedBox(width: Spacing.xs - 2),
              Text(
                'المتجر السعودي',
                style: TextStyles.mediumBody.copyWith(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: Spacing.xs + 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '34.982 ريال سعودي',
                style: TextStyles.mediumBody.copyWith(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.secondaryGreen),
              ),
              if (isDiscounted != null)
                Text(
                  '50.93',
                  style: TextStyles.mediumBody
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.secondaryRed, decoration: TextDecoration.lineThrough),
                ),
            ],
          ),
          const SizedBox(height: Spacing.xs + 2),
          if (isRedeemableByCards == null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    text: 'اضفها للسلة',
                    icon: AppSvgIcons.shop,
                    height: 12,
                    width: 12,
                    color: AppColors.secondaryRed,
                    textColor: AppColors.white,
                    onPressed: () {
                      // Implement Add to Cart button logic
                    },
                  ),
                ),
                const SizedBox(width: Spacing.xs - 2),
                Expanded(
                  child: CustomButton(
                    icon: AppSvgIcons.applePay,
                    padding: 7,
                    height: 11,
                    width: 29,
                    color: AppColors.black,
                    textColor: Colors.white,
                    onPressed: () {
                      // Implement Pay button logic
                    },
                  ),
                ),
              ],
            ),
          if (isRedeemableByCards == true)
            CustomButton(
              text: 'استبدل نقاطك',
              icon: AppSvgIcons.star,
              height: 12,
              nextToIconText: "1543",
              width: 12,
              color: AppColors.secondaryRed,
              textColor: AppColors.white,
              onPressed: () {
                // Implement Add to Cart button logic
              },
            ),
        ],
      ),
    );
  }
}
