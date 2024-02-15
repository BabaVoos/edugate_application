import '../theming/colors.dart';
import '../theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitleAndButton extends StatelessWidget {
  const AppTitleAndButton({
    super.key,
    required this.buttonTitle,
    required this.backgroundColor,
    required this.onTap,
  });

  final String buttonTitle;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          buttonTitle,
          style: TextStyles.font28DarkBlueMedium,
        ),
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 36.5.sp,
            backgroundColor: backgroundColor,
            child: Icon(
              Icons.arrow_forward,
              color: ColorsManager.whiteColor,
              size: 30.sp,
            ),
          ),
        ),
      ],
    );
  }
}
