import 'dart:convert';
import 'dart:io';
import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/font_weight_helper.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_cubit.dart';
import 'package:edugate_applocation/features/home/data/models/qr_code_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/sub_screens_app_bar.dart';
import 'widgets/check_attendance_bloc_listener.dart';

class CheckAttendanceScreen extends StatefulWidget {
  const CheckAttendanceScreen({super.key, required this.qrResult});
  final QRCodeDataModel qrResult;

  @override
  State<CheckAttendanceScreen> createState() => _CheckAttendanceScreenState();
}

class _CheckAttendanceScreenState extends State<CheckAttendanceScreen> {
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSubScreensAppBar(
        context,
        'Check Attendance',
      ),
      body: Padding(
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
              onTap: () => pickImageThenCommit(),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> pickImageThenCommit() async {
    await picker
        .pickImage(source: ImageSource.camera, imageQuality: 70)
        .then((value) {
      final bytes = File(value!.path).readAsBytesSync();
      String base64Image = base64Encode(bytes);
      context
          .read<CheckAttendanceCubit>()
          .emitCompareImagesState(base64Image)
          .then((value) {
      });
    });
  }
}
