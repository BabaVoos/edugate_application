import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/show_message_to_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/profile_cubit.dart';
import '../../logic/cubit/profile_state.dart';

class ProfileBlocListener extends StatelessWidget {
  const ProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen: (previous, current) =>
          current is UpdateProfileloading ||
          current is UpdateProfileSuccess ||
          current is UpdateProfileError,
      listener: (context, state) {
        // either loading state or success state or error state will be handled or null
        state.whenOrNull(
          updateProfileloading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.blueColor,
                  strokeWidth: 2,
                ),
              ),
            );
          },
          updateProfileSuccess: (updateProfileResponse) {
            context.pop();
            showMessageToUser(context, message: 'Changes saved');
          },
          updateProfileError: (error) {
            setupErroState(context, error);
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
