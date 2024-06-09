
import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../logic/cubit/profile_cubit.dart';

PersistentBottomSheetController<dynamic> showLogoutBottomSheet(
    BuildContext buildContext, ProfileCubit cubit) {
  return Scaffold.of(buildContext).showBottomSheet(
    (context) => IntrinsicHeight(
      child: Container(
        width: 1.sw,
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Are you sure you want to logout ?',
              style: TextStyles.font22RedMedium.copyWith(fontSize: 20.sp),
            ),
            verticalSpacing(15),
            Row(
              children: [
                AppButton(
                  buttonText: 'Cancel',
                  textStyle: TextStyles.font16GreyMedium,
                  backgroundColor: ColorsManager.whiteColor,
                  onPressed: () => context.pop(),
                ),
                horizontalSpacing(10),
                AppButton(
                  buttonText: 'Logout',
                  onPressed: () {
                    cubit.emitLogoutStates();
                  },
                  backgroundColor: ColorsManager.redColor,
                  textStyle: TextStyles.font18WhiteSemiBold,
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
