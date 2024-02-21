import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class UserDataForm extends StatelessWidget {
  const UserDataForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: '420202900@hti.edu.eg',
            validator: (value) {},
            label: 'University Email',
          ),
          verticalSpacing(15),
          AppTextFormField(
            hintText: 'User@123',
            validator: (value) {},
            label: 'Password',
          ),
          verticalSpacing(15),
          AppTextFormField(
            hintText: 'User Full Name',
            validator: (value) {},
            label: 'User Name',
          ),
          verticalSpacing(15),
          AppTextFormField(
            hintText: '0000000000',
            validator: (value) {},
            label: 'Phone Number',
          ),
        ],
      ),
    );
  }
}
