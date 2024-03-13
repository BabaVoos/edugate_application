import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_cubit.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:lottie/lottie.dart';

class SetupFaceIdBlocListener extends StatelessWidget {
  const SetupFaceIdBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SetupFaceIdCubit, SetupFaceIdState>(
      listenWhen: (previous, current) =>
          current is SetupFaceIdLoading ||
          current is SetupFaceIdSuccess ||
          current is SetupFaceIdError,
      listener: (context, state) {
        // either loading state or success state or error state will be handled or null
        state.whenOrNull(
          setupFaceIdLoading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: Lottie.asset(
                  'assets/jsons/loading_hand.json',
                ),
              ),
            );
          },
          setupFaceIdSuccess: (loginResponse) {
            setupErroState(context, loginResponse.message);
          },
          setupFaceIError: (error) {
            setupErroState(
              context,
              error,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErroState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        surfaceTintColor: ColorsManager.orangeColor,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.sp),
          ),
        ),
        backgroundColor: ColorsManager.whiteColor,
        icon: Icon(
          IconBroken.Shield_Done,
          color: ColorsManager.blueColor,
          size: 40.sp,
        ),
        content: Text(
          error,
          style: TextStyles.font16GreyMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
            child: Text(
              'Got it',
              style: TextStyles.font18WhiteSemiBold
                  .copyWith(color: ColorsManager.orangeColor),
            ),
          )
        ],
      ),
    );
  }
}
