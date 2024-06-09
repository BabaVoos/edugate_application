import 'package:edugate_applocation/core/widgets/sub_screens_app_bar.dart';
import 'package:edugate_applocation/core/widgets/attendance_container.dart';
import 'package:edugate_applocation/features/attendance_history/data/models/get_attendance_history_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceHistoryScreen extends StatelessWidget {
  const AttendanceHistoryScreen({
    super.key,
    required this.attendanceHistory,
  });

  final List<GetAttendanceHistoryResponse> attendanceHistory;

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
        itemCount: attendanceHistory.length,
        itemBuilder: (context, index) {
          return AttendanceWidget(
            attendance: attendanceHistory[index],
          );
        },
      ),
    );
  }
}
