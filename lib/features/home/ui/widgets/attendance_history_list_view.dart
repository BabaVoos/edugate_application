import 'package:edugate_applocation/core/widgets/attendance_container.dart';
import 'package:edugate_applocation/features/attendance_history/data/models/get_attendance_history_response.dart';
import 'package:flutter/material.dart';

class AttendanceHistoryListView extends StatelessWidget {
  const AttendanceHistoryListView({
    super.key,
    required this.attendanceHistory,
  });

  final List<GetAttendanceHistoryResponse> attendanceHistory;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return AttendanceWidget(
            attendance: attendanceHistory[index],
          );
        },
      );
  }
}
