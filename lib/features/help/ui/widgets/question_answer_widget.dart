import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.sp),
      ),  
      borderOnForeground: true,
      shadowColor: ColorsManager.blueColor,
      margin: EdgeInsets.only(bottom: 16.h),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        iconColor: ColorsManager.orangeColor,
        collapsedIconColor: ColorsManager.orangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.sp),
        ),
        childrenPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        backgroundColor: ColorsManager.whiteColor,
        title: Text(
          question,
          style: TextStyles.font16GreyMedium.copyWith(color: Colors.black),
        ),
        children: [
          Text(
            answer,
            style: TextStyles.font14BlackMedium,
          ),
        ],
      ),
    );
  }
}
