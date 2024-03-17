import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/course_attendance_widget.dart';
import '../../../core/widgets/sub_screens_app_bar.dart';

class CourseAttendanceScreen extends StatelessWidget {
  const CourseAttendanceScreen({
    super.key,
    required this.courseName,
  });

  final String courseName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSubScreensAppBar(context, courseName),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        physics: const BouncingScrollPhysics(),
        itemCount: 14,
        itemBuilder: (context, index) {
          return CourseAttendanceWidget(
            courseName: courseName,
            week: 'Week ${index + 1}',
          );
        },
      ),
    );
  }
}
