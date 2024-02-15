import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/font_weight_helper.dart';
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

  static TextStyle font14GrayRegular = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grayColor,
  );
}
