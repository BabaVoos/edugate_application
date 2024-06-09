import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/core/widgets/show_message_to_user.dart';
import 'package:edugate_applocation/features/profile/logic/cubit/profile_cubit.dart';
import 'package:edugate_applocation/features/profile/logic/cubit/profile_state.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/show_logout_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SaveChangesAndLogoutButtons extends StatelessWidget {
  const SaveChangesAndLogoutButtons({
    super.key,
    required this.saveChangesOnTap,
  });
  
  final void Function()? saveChangesOnTap;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ProfileCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: saveChangesOnTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                IconBroken.Edit_Square,
                color: ColorsManager.blueColor,
              ),
              horizontalSpacing(10),
              Text(
                'Save Changes',
                style: TextStyles.font22RedMedium
                    .copyWith(color: ColorsManager.blueColor),
              ),
            ],
          ),
        ),
        horizontalSpacing(10),
        BlocListener<ProfileCubit, ProfileState>(
          listener: (context, state) {
            if (state is LogoutSuccess) {
              context.pushNamedAndRemoveUntil(
                Routes.welcomeScreen,
                predicate: (route) => false,
              );
            } else if (state is LogoutError) {
              showMessageToUser(
                context,
                message: state.message,
              );
            }
          },
          child: TextButton(
            onPressed: () {
              showLogoutBottomSheet(context, cubit);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  IconBroken.Logout,
                  color: ColorsManager.redColor,
                ),
                horizontalSpacing(10),
                Text(
                  'Logout',
                  style: TextStyles.font22RedMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
