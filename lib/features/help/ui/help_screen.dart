import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Help Screen',
      style: TextStyles.font24BlueSemiBold,
    ));
  }
}
