import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/widgets/app_title_and_button.dart';
import 'package:edugate_applocation/core/widgets/show_message_to_user.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/comapre_images_reponse_body.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_cubit.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class CheckAttendanceBlocListener extends StatelessWidget {
  const CheckAttendanceBlocListener({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckAttendanceCubit, CheckAttendanceState>(
      listenWhen: (previous, current) =>
          current is CompareImagesLoading ||
          current is CompareImagesError ||
          current is CompareImagesSuccess,
      listener: (context, state) {
        state.whenOrNull(
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
            context.pop();
            checkResponse(reponse, context);
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

  void checkResponse(CompareImagesResponseBody reponse, BuildContext context) {
    if (reponse.result == 'True') {
      showMessageToUser(
        context,
        message: 'Image verified. Continue to record your attendance',
        buttonText: 'Continue',
      );
    } else {
      showMessageToUser(
        context,
        message: 'Image not verified, please try again',
      );
    }
  }
}
