import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/sub_screens_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckAttendanceScreen extends StatelessWidget {
  const CheckAttendanceScreen({super.key, required this.qrResult});

  final String qrResult;

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
          child: Text(
            'QR Result : $qrResult',
            style: TextStyles.font20BlueSemiBold,
          ),
        ),
      ),
    );
  }
}
