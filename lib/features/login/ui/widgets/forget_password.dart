import 'package:edugate_applocation/core/networking/cache_helper.dart';
import '../../../../core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CacheHelper.clearData();
      },
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          'Forgot Password?',
          style: TextStyles.font28DarkBlueMedium.copyWith(fontSize: 16.sp),
        ),
      ),
    );
  }
}
