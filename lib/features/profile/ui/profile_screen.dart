import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: TextStyles.font24BlueSemiBold,
      ),
    );
  }
}
