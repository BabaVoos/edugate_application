// ignore_for_file: must_be_immutable
import 'package:edugate_applocation/core/helpers/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/profile_cubit.dart';

class ProfileUserData extends StatelessWidget {
  const ProfileUserData({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ProfileCubit>();
    cubit.setDefaultUserData();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Form(
        key: cubit.formKey,
        child: Column(
          children: [
            AppTextFormField(
              controller: cubit.nameController,
              hintText: 'Mudar Abdulhadi AlNajjar',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isUserNameValid(value)) {
                  return 'Please enter a valid name';
                }
              },
              label: 'Name',
              suffixIcon: const Icon(
                IconBroken.Edit,
                color: ColorsManager.blueColor,
              ),
              prefixIcon: const Icon(IconBroken.Profile),
            ),
            verticalSpacing(20),
            AppTextFormField(
              controller: cubit.phoneNumberController,
              hintText: '0106492749',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Please enter a valid phone number';
                }
              },
              label: 'Phone Number',
              suffixIcon: const Icon(
                IconBroken.Edit,
                color: ColorsManager.blueColor,
              ),
              prefixIcon: const Icon(IconBroken.Call),
            ),
            verticalSpacing(20),
            AppTextFormField(
              controller: cubit.mailController,
              hintText: '',
              validator: (value) {},
              label: 'University Email',
              prefixIcon: const Icon(IconBroken.Message),
              enabled: false,
            ),
            verticalSpacing(20),
            AppTextFormField(
              controller: cubit.studentIdController,
              hintText: '42020290',
              validator: (value) {},
              label: 'Student ID',
              prefixIcon: const Icon(IconBroken.Ticket),
              enabled: false,
            ),
          ],
        ),
      ),
    );
  }
}
