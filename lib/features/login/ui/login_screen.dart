import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_title_and_button.dart';
import '../../../core/widgets/custom_background.dart';
import 'widgets/email_and_password.dart';
import 'widgets/forget_password.dart';
import 'widgets/newbie_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        horizontalPadding: 24,
        imagePath: 'assets/images/background.png',
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpacing(256),
              Text(
                'Welcome\nBack!',
                style: TextStyles.font42OrangeMedium,
              ),
              verticalSpacing(30),
              const EmailAndPassword(),
              verticalSpacing(10),
              const ForgotPassword(),
              verticalSpacing(20),
              AppTitleAndButton(
                backgroundColor: ColorsManager.orangeColor,
                onTap: () {},
                buttonTitle: 'Login',
              ),
              verticalSpacing(40),
              const NewbieText(),
            ],
          ),
        ),
      ),
    );
  }
}