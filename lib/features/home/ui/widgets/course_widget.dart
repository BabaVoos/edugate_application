import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
    required this.course,
  });

  final GetCoursesResponse course;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.courseAttendanceScreen, arguments: course);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: Container(
          height: 70.h,
          width: 70.w,
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
          child: Center(
            child: Text(
              course.courseName![0].toUpperCase() + course.courseName![1].toLowerCase(),
              style: TextStyles.font20BlueSemiBold,
            ),
          ),
        ),
      ),
    );
  }
}
