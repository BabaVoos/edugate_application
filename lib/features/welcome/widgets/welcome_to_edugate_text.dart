import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/my_rich_text.dart';
import 'package:flutter/material.dart';

class WelcomeToEdugateText extends StatelessWidget {
  const WelcomeToEdugateText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyRichText(
      align: TextAlign.center,
      firstText: 'Welcome to\n',
      firstTextStyle: TextStyles.font42OrangeSemiBold,
      secondTextStyle: TextStyles.font42OrangeSemiBold
          .copyWith(color: ColorsManager.blueColor),
      secondText: 'EDUGATE',
    );
  }
}
