import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/features/register/logic/cubit/register_cubit.dart';
import 'package:edugate_applocation/features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/router.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is RegisterLoading ||
          current is RegisterSuccess ||
          current is RegisterError,
      listener: (context, state) {
        // either loading state or success state or error state will be handled or null
        state.whenOrNull(
          registerLoading: () {
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
          registerSuccess: (loginResponse) {
            context.pop();
            context.pushReplacementNamed(Routes.setupFaceIdScreen);
          },
          registerError: (error) {
            if (error == 'This Email is already in exist!!' ||
                error == 'This UserName is already in exist!!') {
              setupErroState(context, 'OOOps, Email already in use!');
            } else {
              setupErroState(
                context,
                error,
              );
            }
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
