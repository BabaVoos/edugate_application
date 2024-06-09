import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../logic/cubit/register_cubit.dart';

class UserDataForm extends StatelessWidget {
  const UserDataForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: '42020290@hti.edu.eg',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            label: 'University Email',
            keyboardType: TextInputType.emailAddress,
            controller: context.read<RegisterCubit>().emailController,
          ),
          verticalSpacing(15),
          AppTextFormField(
            hintText: 'User@123',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password as provided in hint';
              }
            },
            label: 'Password',
            controller: context.read<RegisterCubit>().passwordController,
          ),
          verticalSpacing(15),
          AppTextFormField(
            hintText: 'User Full Name',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isUserNameValid(value)) {
                return 'Please enter your full name';
              }
            },
            label: 'User Name',
            controller: context.read<RegisterCubit>().nameController,
          ),
          verticalSpacing(15),
          AppTextFormField(
            hintText: '0000000000',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            label: 'Phone Number',
            keyboardType: TextInputType.number,
            controller: context.read<RegisterCubit>().phoneNumberController,
          ),
        ],
      ),
    );
  }
}
