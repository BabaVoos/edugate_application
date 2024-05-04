import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

AppBar buildApplicationAppBar({required String title}) {
  return AppBar(
    centerTitle: true,
    toolbarHeight: .1.sh,
    backgroundColor: Colors.transparent,
    leadingWidth: .2.sw,
    leading: title == 'Home'
        ? Container(
            margin: EdgeInsets.only(left: 15.w, bottom: 10.h, top: 10.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: ColorsManager.blueColor,
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: ColorsManager.orangeColor,
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(-2, -2),
                )
              ],
            ),
            child: SvgPicture.asset(
              'assets/svgs/logo.svg',
            ),
          )
        : Container(),
    actions: title == 'Home' || title == 'Help'
        ? [
            SvgPicture.asset(
              'assets/svgs/blue_container.svg',
              fit: BoxFit.fill,
            ),
          ]
        : [],
    elevation: 0,
    automaticallyImplyLeading: false,
    title: Text(
      title,
      style: TextStyles.font30BlueSemiBold,
    ),
  );
}
