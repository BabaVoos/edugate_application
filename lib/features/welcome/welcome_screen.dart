import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/custom_background.dart';
import 'package:edugate_applocation/features/welcome/widgets/register_and_login_buttons.dart';
import 'package:edugate_applocation/features/welcome/widgets/welcome_to_edugate_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 145.h,
            ),
            const WelcomeToEdugateText(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Effortless attendance tracking.\nScan, authenticate with fingerprint and Face ID',
              textAlign: TextAlign.center,
              style: TextStyles.font14GrayRegular,
            ),
            SizedBox(
              height: 40.h,
            ),
            SvgPicture.asset(
              'assets/svgs/welcome.svg',
              height: 250.h,
            ),
            SizedBox(
              height: 50.h,
            ),
            const RegisterAndLoginButtons(),
          ],
        ),
      ),
    );
  }
}
