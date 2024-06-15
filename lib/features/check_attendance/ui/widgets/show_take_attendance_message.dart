import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/routing/router.dart';
import '../../../../core/widgets/show_message_to_user.dart';

void showTakeAttendanceMessage(
      {required BuildContext context,
      required String message,
      required String animationPath}) {
    context.pushReplacementNamed(Routes.edugateLayout);
    showMessageToUser(
      textAlign: TextAlign.start,
      context,
      message: message,
      widget: Lottie.asset(
        animationPath,
        height: 100.h,
        width: 100.w,
      ),
    );
  }