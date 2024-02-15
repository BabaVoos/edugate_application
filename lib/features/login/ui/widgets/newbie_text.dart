import '../../../../core/helpers/extinsions.dart';
import '../../../../core/routing/router.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/my_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewbieText extends StatelessWidget {
  const NewbieText({super.key});

  @override
  Widget build(BuildContext context) {
    return MyRichText(
      align: TextAlign.center,
      firstText: 'Newbie? ',
      firstTextStyle: TextStyles.font28DarkBlueMedium
          .copyWith(fontSize: 18.sp, color: ColorsManager.greyColor),
      secondTextStyle:
          TextStyles.font28DarkBlueMedium.copyWith(fontSize: 18.sp),
      secondText: 'Register',
      onTap: () {
        context.pushReplacementNamed(
          Routes.registerScreen,
        );
      },
    );
  }
}
