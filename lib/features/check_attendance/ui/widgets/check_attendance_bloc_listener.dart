import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/widgets/app_title_and_button.dart';
import 'package:edugate_applocation/core/widgets/show_message_to_user.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/comapre_images_reponse_body.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/take_attendance_request_body.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/take_attendance_response.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_cubit.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'show_take_attendance_message.dart';

class CheckAttendanceBlocListener extends StatelessWidget {
  const CheckAttendanceBlocListener({
    super.key,
    required this.onTap,
    required this.takeAttendanceRequestBody,
  });

  final void Function() onTap;
  final TakeAttendanceRequestBody takeAttendanceRequestBody;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckAttendanceCubit, CheckAttendanceState>(
      listenWhen: (previous, current) =>
          current is CompareImagesLoading ||
          current is CompareImagesError ||
          current is CompareImagesSuccess ||
          current is TakeAttendanceSuccess ||
          current is TakeAttendanceError,
      listener: (context, state) {
        state.whenOrNull(
          takeAttendanceSuccess: (data) {
            TakeAttendanceResponse reponse = data;
            showTakeAttendanceMessage(
              context: context,
              message: reponse.message!,
              animationPath: 'assets/jsons/check_attendance.json',
            );
          },
          takeAttendanceError: (message) {
            showTakeAttendanceMessage(
              context: context,
              message: message,
              animationPath: 'assets/jsons/error.json',
            );
          },
          compareImagesLoading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: Lottie.asset(
                  'assets/jsons/loading_hand.json',
                ),
              ),
            );
          },
          compareImagesSuccess: (comapreImagesReponse) {
            CompareImagesResponseBody reponse = comapreImagesReponse;
            checkResponse(reponse, context, takeAttendanceRequestBody);
          },
          compareImagesError: (message) {
            context.pop();
            showMessageToUser(
              context,
              message: 'There is something wrong, please try again',
            );
          },
        );
      },
      child: AppTitleAndButton(
        buttonTitle: 'Check',
        backgroundColor: ColorsManager.orangeColor,
        onTap: onTap,
      ),
    );
  }

  void checkResponse(CompareImagesResponseBody reponse, BuildContext context,
      TakeAttendanceRequestBody takeAttendanceRequestBody) {
    if (reponse.result == 'True') {
      context
          .read<CheckAttendanceCubit>()
          .emitTakeAttendanceState(takeAttendanceRequestBody);
    } else {
      showMessageToUser(
        context,
        message: 'Image not verified, please try again',
      );
    }
  }
}
