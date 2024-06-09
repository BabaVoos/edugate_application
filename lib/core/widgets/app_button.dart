
import '../theming/colors.dart';
import '../theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    required this.buttonText,
    this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 0,
            vertical: verticalPadding?.h ?? 0,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius?.sp ?? 30.sp),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? ColorsManager.blueColor,
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            buttonWidth?.w ?? 164.w,
            buttonHeight?.h ?? 55.h,
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font18WhiteSemiBold,
      ),
    );
  }
}
