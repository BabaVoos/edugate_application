import '../theming/colors.dart';
import '../theming/font_weight_helper.dart';
import '../theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final String label;
  final Function(String?) validator;
  final Color? cursorColor;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final bool? enabled;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    required this.label,
    this.cursorColor,
    this.keyboardType,
    this.prefixIcon,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: cursorColor ?? ColorsManager.blueColor,
      controller: controller,
      enabled: enabled ?? true,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: ColorsManager.blueColor,
        labelText: label,
        labelStyle: TextStyles.font14BlackMedium.copyWith(color: Colors.grey),
        isDense: true,
        alignLabelWithHint: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
        focusedBorder: focusedBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: backgroundColor ?? ColorsManager.orangeColor,
                width: 2,
              ),
            ),
        enabledBorder: enabledBorder ??
            UnderlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsManager.greyColor,
                width: 2,
              ),
            ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintStyle ??
            TextStyles.font14GreyRegular
                .copyWith(fontWeight: FontWeightHelper.medium),
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? Colors.transparent,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14BlackMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
