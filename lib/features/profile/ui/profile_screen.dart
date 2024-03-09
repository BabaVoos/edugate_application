import 'package:edugate_applocation/features/profile/ui/widgets/save_changes_and_logout_button.dart';
import 'package:flutter/material.dart';
import '../../../core/helpers/spacing.dart';
import 'widgets/pick_image_widget.dart';
import 'widgets/profile_user_data.dart';

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
          const SaveChangesAndLogoutButtons(),
        ],
      ),
    );
  }
}
