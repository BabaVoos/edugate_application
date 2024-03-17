import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class CourseAttendanceWidget extends StatelessWidget {
  const CourseAttendanceWidget({
    super.key,
    required this.courseName,
    required this.week,
  });

  final String courseName;
  final String week;

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
            width: 40.w,
            decoration: BoxDecoration(
              color: ColorsManager.blueColor,
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: Center(
              child: Text(
                style: TextStyles.font18WhiteSemiBold,
                courseName[0],
              ),
            ),
          ),
          horizontalSpacing(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: TextStyles.font18WhiteSemiBold
                      .copyWith(color: ColorsManager.blueColor),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  week,
                  style: TextStyles.font16GreyMedium,
                )
              ],
            ),
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
