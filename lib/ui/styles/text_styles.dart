import 'package:daleelstore_asessment/ui/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final TextStyle smallBody = GoogleFonts.ibmPlexSansArabic(
    fontSize: 12,
    height: 18 / 12,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static final TextStyle mediumBody = GoogleFonts.ibmPlexSansArabic(
    fontSize: 14,
    height: 21 / 14,
    fontWeight: FontWeight.w600,
    color: AppColors.darkBase,
  );

  static final TextStyle largeBody = GoogleFonts.ibmPlexSansArabic(
    fontSize: 16,
    height: 24 / 16,
    color: AppColors.black,
  );

  static final TextStyle subHeadline = GoogleFonts.ibmPlexSansArabic(
    fontSize: 18,
    height: 27 / 18,
    color: AppColors.black,
  );

  static final TextStyle headline = GoogleFonts.ibmPlexSansArabic(
    fontSize: 20,
    height: 30 / 20,
    fontWeight: FontWeight.bold,
    color: AppColors.darkBase,
  );

  static final TextStyle largeHeadline = GoogleFonts.ibmPlexSansArabic(
    fontSize: 22,
    height: 33 / 22,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
  
}
