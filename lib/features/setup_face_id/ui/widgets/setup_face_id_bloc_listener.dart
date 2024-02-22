import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_cubit.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.orangeColor,
                  strokeWidth: 2,
                ),
              ),
            );
          },
          setupFaceIdSuccess: (loginResponse) {
            setupErroState(context, loginResponse.message);
            // context.pushReplacementNamed(Routes.setupFaceIdScreen);
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
          Icons.report_problem_outlined,
          color: ColorsManager.orangeColor,
          size: 40.sp,
        ),
        content: Text(
          error,
          style: TextStyles.font14BlackMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
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
