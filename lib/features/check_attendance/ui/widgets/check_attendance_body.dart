import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/font_weight_helper.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/check_attendance/ui/widgets/check_attendance_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CheckAttendanceBody extends StatelessWidget {
  const CheckAttendanceBody({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 24.h,
        horizontal: 24.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Face ID',
            style: TextStyles.font24BlueSemiBold,
          ),
          verticalSpacing(10),
          Text(
            'Securely verify your attendance with a simple selfie, please align your face within the frame and take a clear picture for attendance verification.',
            style: TextStyles.font18WhiteSemiBold.copyWith(
              color: ColorsManager.darkBlueColor,
              fontWeight: FontWeightHelper.regular,
            ),
          ),
          verticalSpacing(10),
          Expanded(
            child: LottieBuilder.asset('assets/jsons/face_recognition.json'),
          ),
          verticalSpacing(40),
          CheckAttendanceBlocListener(
            onTap: () {
              onTap();
            },
          ),
        ],
      ),
    );
  }
}
