import '../../core/helpers/spacing.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/custom_background.dart';
import 'widgets/register_and_login_buttons.dart';
import 'widgets/welcome_to_edugate_text.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpacing(145),
              const WelcomeToEdugateText(),
              verticalSpacing(10),
              Text(
                'Effortless attendance tracking.\nScan, authenticate with fingerprint and Face ID',
                textAlign: TextAlign.center,
                style: TextStyles.font14GreyRegular,
              ),
              verticalSpacing(40),
              SvgPicture.asset(
                'assets/svgs/welcome.svg',
                height: 250.h,
              ),
              verticalSpacing(50),
              const RegisterAndLoginButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
