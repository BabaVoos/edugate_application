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
        "Looks like you haven't attended any lectures yet :)",
        style: TextStyles.font16GreyMedium,
      ),
    );
  }
}
