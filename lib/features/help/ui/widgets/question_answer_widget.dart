import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class QuestionAnswerWidget extends StatelessWidget {
  const QuestionAnswerWidget({
    super.key,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.whiteColor,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.sp),
      ),
      borderOnForeground: true,
      shadowColor: ColorsManager.darkBlueColor,
      margin: EdgeInsets.only(bottom: 16.h),
      child: ExpansionTile(
        leading: const Icon(
          IconBroken.Chat,
        ),
        tilePadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        iconColor: ColorsManager.blueColor,
        collapsedIconColor: ColorsManager.blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.sp),
        ),
        childrenPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        backgroundColor: ColorsManager.whiteColor,
        title: Text(
          question,
          style: TextStyles.font16GreyMedium.copyWith(color: Colors.black),
        ),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.sp),
              border: Border.all(color: ColorsManager.blueColor),
            ),
            child: Text(
              answer,
              style: TextStyles.font14BlackMedium,
            ),
          ),
        ],
      ),
    );
  }
}
