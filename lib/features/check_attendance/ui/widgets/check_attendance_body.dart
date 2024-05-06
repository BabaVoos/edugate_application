import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/take_attendance_request_body.dart';
import 'package:edugate_applocation/features/check_attendance/ui/widgets/check_attendance_bloc_listener.dart';
import 'package:edugate_applocation/features/home/data/models/qr_code_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CheckAttendanceBody extends StatelessWidget {
  const CheckAttendanceBody({
    super.key,
    required this.onTap,
    required this.qrRsult,
  });

  final void Function() onTap;
  final QRCodeDataModel qrRsult;

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
            style: TextStyles.font18DarkBlueRegular,
          ),
          verticalSpacing(10),
          Expanded(
            child: LottieBuilder.asset('assets/jsons/face_recognition.json'),
          ),
          verticalSpacing(40),
          CheckAttendanceBlocListener(
            takeAttendanceRequestBody: TakeAttendanceRequestBody(
              courseId: qrRsult.courseId,
              groupId: qrRsult.groupId,
              lectureNumber: qrRsult.week,
              studentId: int.parse(
                CacheHelper.getData(key: 'userName'),
              ),
            ),
            onTap: () {
              onTap();
            },
          ),
        ],
      ),
    );
  }
}
