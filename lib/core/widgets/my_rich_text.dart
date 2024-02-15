import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.firstTextStyle,
    this.secondTextStyle,
    this.align,
    this.onTap,
  });

  final String firstText;
  final String secondText;
  final TextStyle? firstTextStyle;
  final TextStyle? secondTextStyle;
  final TextAlign? align;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: align ?? TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: firstTextStyle,
          ),
          TextSpan(
            text: secondText,
            style: secondTextStyle,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
