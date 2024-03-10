import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/profile_bloc_listener.dart';
import 'package:edugate_applocation/features/profile/ui/widgets/save_changes_and_logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helpers/spacing.dart';
import '../logic/cubit/profile_cubit.dart';
import 'widgets/pick_image_widget.dart';
import 'widgets/profile_user_data.dart';
import 'widgets/show_message_to_user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PickImageWidget(),
          verticalSpacing(20),
          const ProfileUserData(),
          verticalSpacing(30),
          SaveChangesAndLogoutButtons(
            saveChangesOnTap: () {
              validateThenUpdate(context);
            },
          ),
          const ProfileBlocListener(),
        ],
      ),
    );
  }

  void validateThenUpdate(BuildContext context) {
    if (context.read<ProfileCubit>().nameController.text ==
            CacheHelper.getData(key: 'displayName') &&
        context.read<ProfileCubit>().phoneNumberController.text ==
            CacheHelper.getData(key: 'phoneNumber')) {
      showMessageToUser(context, message: 'No changes detected');
    } else {
      if (context.read<ProfileCubit>().formKey.currentState!.validate()) {
        context.read<ProfileCubit>().emitUpdateProfileStates();
      }
    }
  }
}
