import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseAttendanceWidget extends StatelessWidget {
  const CourseAttendanceWidget({
    super.key,
    required this.course,
    required this.week,
    required this.attended,
  });

  final String week;
  final GetCoursesResponse course;
  final bool attended;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color:
            attended ? Colors.white : ColorsManager.greyColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(
          16,
        ),
        boxShadow: attended
            ? const [
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
              ]
            : null,
      ),
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 5.w,
            decoration: BoxDecoration(
              color: attended
                  ? ColorsManager.blueColor
                  : ColorsManager.blueColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
          ),
          horizontalSpacing(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.courseName!,
                  style: TextStyles.font18WhiteSemiBold.copyWith(
                    color: attended
                        ? ColorsManager.blueColor
                        : ColorsManager.blueColor.withOpacity(.5),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(5),
                Text(
                  week,
                  style: attended
                      ? TextStyles.font16GreyMedium
                      : TextStyles.font16GreyMedium.copyWith(
                          color: ColorsManager.greyColor.withOpacity(.5),
                        ),
                )
              ],
            ),
          ),
          horizontalSpacing(10),
          Text(
            course.groupName!,
            style: attended
                ? TextStyles.font16GreyMedium
                : TextStyles.font16GreyMedium.copyWith(
                    color: ColorsManager.greyColor.withOpacity(.5),
                  ),
          ),
        ],
      ),
    );
  }
}
