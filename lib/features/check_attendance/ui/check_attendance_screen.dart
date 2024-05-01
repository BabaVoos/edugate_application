import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/sub_screens_app_bar.dart';
import 'package:edugate_applocation/features/home/data/models/qr_code_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckAttendanceScreen extends StatelessWidget {
  const CheckAttendanceScreen({super.key, required this.qrResult});

  final QRCodeDataModel qrResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSubScreensAppBar(
        context,
        'Check Attendance',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 32.h,
          horizontal: 24.w,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Course Name : ${qrResult.courseName}',
                style: TextStyles.font20BlueSemiBold,
              ),
              Text(
                'Week : ${qrResult.week}',
                style: TextStyles.font20BlueSemiBold,
              ),
              Text(
                'Group : ${qrResult.groupName}',
                style: TextStyles.font20BlueSemiBold,
              ),
              Text(
                'Longitude : ${qrResult.longitude}',
                style: TextStyles.font20BlueSemiBold,
              ),
              Text(
                'Lattitude : ${qrResult.latitude}',
                style: TextStyles.font20BlueSemiBold,
              ),
              Text(
                'Time : ${qrResult.time}',
                style: TextStyles.font20BlueSemiBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
