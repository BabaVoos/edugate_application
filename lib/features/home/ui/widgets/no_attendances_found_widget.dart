import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoAttendancesFoundWidget extends StatelessWidget {
  const NoAttendancesFoundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Text(
          'No attendances found',
          style: TextStyles.font16GreyMedium,
        ),
      );
  }
}
