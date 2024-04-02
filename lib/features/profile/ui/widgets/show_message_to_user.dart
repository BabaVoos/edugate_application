import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

Future<dynamic> showMessageToUser(BuildContext context,
    {required String message, TextAlign? textAlign}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        message,
        style: TextStyles.font18WhiteSemiBold
            .copyWith(color: ColorsManager.blueColor),
        textAlign: textAlign ?? TextAlign.center,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font16GreyMedium,
          ),
        ),
      ],
    ),
  );
}
