import 'package:edugate_applocation/features/course_attendance/ui/widgets/course_attendance_widget.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseAttendanceListView extends StatelessWidget {
  const CourseAttendanceListView({
    super.key,
    required this.attendance,
    required this.course,
  });

  final List<bool> attendance;
  final GetCoursesResponse course;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      physics: const BouncingScrollPhysics(),
      itemCount: attendance.length,
      itemBuilder: (context, index) {
        return CourseAttendanceWidget(
          course: course,
          week: 'Week ${index + 1}',
          attended: attendance[index],
        );
      },
    );
  }
}
