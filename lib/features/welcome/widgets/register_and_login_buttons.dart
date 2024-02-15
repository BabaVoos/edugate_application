import '../../../core/helpers/extinsions.dart';
import '../../../core/routing/router.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterAndLoginButtons extends StatelessWidget {
  const RegisterAndLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              buttonText: 'Register',
              onPressed: () {
                context.pushNamed(Routes.registerScreen);
              },
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: AppButton(
              buttonText: 'Login',
              backgroundColor: ColorsManager.orangeColor,
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
