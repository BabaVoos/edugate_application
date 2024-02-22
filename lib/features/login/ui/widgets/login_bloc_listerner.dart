import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        // either loading state or success state or error state will be handled or null
        state.whenOrNull(
          loading: () {
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
          success: (loginResponse) {
            context.pop();
          },
          error: (error) {
            setupErroState(context,
                'Invalid email or password. Please check your credentials and try again.');
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
