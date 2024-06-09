import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/app_title_and_button.dart';
import 'package:edugate_applocation/core/widgets/custom_background.dart';
import 'package:edugate_applocation/features/register/ui/widgets/register_bloc_listener.dart';
import 'package:edugate_applocation/features/register/ui/widgets/user_data_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubit/register_cubit.dart';
import 'widgets/already_registered_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        imagePath: 'assets/images/background.png',
        horizontalPadding: 24,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpacing(180),
              Text(
                'Create\nAccount',
                style: TextStyles.font42BlueMedium,
              ),
              verticalSpacing(20),
              const UserDataForm(),
              verticalSpacing(30),
              AppTitleAndButton(
                buttonTitle: 'Next',
                backgroundColor: ColorsManager.blueColor,
                onTap: () {
                  validateThenDoRegister(context);
                },
              ),
              verticalSpacing(30),
              const AlreadyRegisteredText(),
              const RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterStates();
    }
  }
}
