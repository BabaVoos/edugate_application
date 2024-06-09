import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({
    super.key,
  });

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: context.read<LoginCubit>().emailController,
            label: 'University Email',
            hintText: '420202900@hti.edu.eg',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
            },
          ),
          verticalSpacing(15),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManager.darkGrayColor,
              ),
            ),
            label: 'Password',
            hintText: 'minimum 8 characters ',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              } else if (value.length < 8) {
                return 'Password must be at least 8 characters';
              }
            },
          ),
        ],
      ),
    );
  }
}
