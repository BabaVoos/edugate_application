import 'package:edugate_applocation/features/attendance_history/data/models/get_attendance_history_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/spacing.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';
import 'date_time_widget.dart';

class AttendanceWidget extends StatelessWidget {
  const AttendanceWidget({
    super.key,
    required this.attendance,
  });

  final GetAttendanceHistoryResponse attendance;

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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  attendance.attendanceRecords![0].courseName ?? 'Course Name',
                  style: TextStyles.font20BlueSemiBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(5),
                Text(
                  'Week ${attendance.attendanceRecords![0].lectureNumber ?? '1'}',
                  style: TextStyles.font16GreyMedium,
                )
              ],
            ),
          ),
          horizontalSpacing(10),
          DateTimeWidget(
            dateTimeString: attendance.date ?? '',
          ),
        ],
      ),
    );
  }
}
