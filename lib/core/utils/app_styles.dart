

import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_store/core/utils/app_colors.dart';

abstract class AppStyles {
  static TextStyle greyW500TextSized14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: GoogleFonts.balsamiqSans().fontFamily,
  );
  static TextStyle darkGreyW600TextSized20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.darkGreyColor,
    fontFamily: GoogleFonts.balsamiqSans().fontFamily,
  );
  static TextStyle blackW500TextSized16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
    fontFamily: GoogleFonts.balsamiqSans().fontFamily,
  );
  static TextStyle blackW500TextSized22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
    fontFamily: GoogleFonts.balsamiqSans().fontFamily,
  );
  static TextStyle blackW600TextSized24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
    fontFamily: GoogleFonts.balsamiqSans().fontFamily,
  );
  static TextStyle orangeW600TextSized16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryColor,
    fontFamily: GoogleFonts.balsamiqSans().fontFamily,
  );
}