import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AttendanceWidget extends StatelessWidget {
  const AttendanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
        boxShadow: const [
          BoxShadow(
            color: ColorsManager.greyColor,
            offset: Offset(1, 1),
            blurRadius: 1,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: ColorsManager.whiteColor,
            offset: Offset(-1, -1),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 5.w,
            decoration: BoxDecoration(
              color: ColorsManager.blueColor,
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
          ),
          horizontalSpacing(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Data Structure',
                style: TextStyles.font20BlueSemiBold,
              ),
              Text(
                'Week 5',
                style: TextStyles.font16GreyMedium,
              )
            ],
          ),
          const Spacer(),
          Icon(
            IconBroken.Shield_Done,
            color: Colors.green[700],
          ),
        ],
      ),
    );
  }
}
