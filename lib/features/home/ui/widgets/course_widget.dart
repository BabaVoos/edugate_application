import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
    required this.courseName,
  });

  final String courseName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.courseAttendanceScreen, arguments: courseName);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 1,
                spreadRadius: 2,
                offset: const Offset(2, 2),
              ),
              const BoxShadow(
                color: ColorsManager.whiteColor,
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(-2, -2),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(
            vertical: 25.h,
            horizontal: 25.w,
          ),
          child: Text(
            courseName[0],
            style: TextStyles.font24BlueSemiBold,
          ),
        ),
      ),
    );
  }
}
