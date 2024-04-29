import 'package:edugate_applocation/core/helpers/date_format_helper.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({
    super.key,
    required this.dateTimeString,
  });

  final String dateTimeString;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorsManager.blueColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            DateTimeHelper.parseDateTime(dateTimeString)[0] ?? '',
            style: TextStyles.font14BlackMedium
                .copyWith(color: ColorsManager.blueColor),
          ),
          verticalSpacing(5),
          Text(
            DateTimeHelper.parseDateTime(dateTimeString)[1] ?? '',
            style: TextStyles.font14BlackMedium
                .copyWith(color: ColorsManager.blueColor),
          ),
        ],
      ),
    );
  }
}
