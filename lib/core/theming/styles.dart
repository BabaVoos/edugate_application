import 'colors.dart';
import 'font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle font42OrangeSemiBold = GoogleFonts.poppins(
    fontSize: 42.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.orangeColor,
  );

  static TextStyle font42OrangeMedium = GoogleFonts.poppins(
    fontSize: 42.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.orangeColor,
  );

  static TextStyle font42BlueMedium = GoogleFonts.poppins(
    fontSize: 42.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.blueColor,
  );

  static TextStyle font18WhiteSemiBold = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.whiteColor,
  );

  static TextStyle font28DarkBlueMedium = GoogleFonts.poppins(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlueColor,
  );

  static TextStyle font14GreyRegular = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.greyColor,
  );

  static TextStyle font14BlackMedium = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.black,
  );
}