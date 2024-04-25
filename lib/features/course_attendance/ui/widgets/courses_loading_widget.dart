import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceLoadingWidget extends StatelessWidget {
  const AttendanceLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 16.h),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          decoration: BoxDecoration(
            color: ColorsManager.greyColor.withOpacity(.1),
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 40.h,
                width: 5.w,
                decoration: BoxDecoration(
                  color: ColorsManager.greyColor,
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
              ),
              horizontalSpacing(10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 7.h,
                      width: .2.sw,
                      decoration: BoxDecoration(
                        color: ColorsManager.greyColor,
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                    ),
                    verticalSpacing(10),
                    Container(
                      height: 7.h,
                      width: .1.sw,
                      decoration: BoxDecoration(
                        color: ColorsManager.greyColor,
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              horizontalSpacing(10),
              Container(
                height: 5.h,
                width: .1.sw,
                decoration: BoxDecoration(
                  color: ColorsManager.greyColor,
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
