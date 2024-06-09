import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/my_rich_text.dart';

class AlreadyRegisteredText extends StatelessWidget {
  const AlreadyRegisteredText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyRichText(
      align: TextAlign.center,
      firstText: 'Already Registered? ',
      secondText: 'Login',
      secondTextStyle:
          TextStyles.font28DarkBlueMedium.copyWith(fontSize: 18.sp),
      firstTextStyle: TextStyles.font28DarkBlueMedium
          .copyWith(fontSize: 18.sp, color: ColorsManager.greyColor),
      onTap: () {
        context.pushReplacementNamed(Routes.loginScreen);
      },
    );
  }
}
