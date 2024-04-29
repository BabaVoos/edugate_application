import 'package:edugate_applocation/core/widgets/sub_screens_app_bar.dart';
import 'package:edugate_applocation/core/widgets/attendance_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceHistoryScreen extends StatelessWidget {
  const AttendanceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSubScreensAppBar(
        context,
        'Attendance History',
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 16.h),
        itemCount: 14,
        itemBuilder: (context, index) {
          return const AttendanceWidget();
        },
      ),
    );
  }
}
