import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_button.dart';

class QrScanningWidget extends StatelessWidget {
  const QrScanningWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            22.sp,
          ),
        ),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/container_bg.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'QR SCANING',
            style: TextStyles.font24BlueSemiBold.copyWith(color: Colors.white),
          ),
          verticalSpacing(5),
          Text(
            "Scan the lecture's QR to add\nyour name to the attendance list",
            style: TextStyles.font18WhiteSemiBold.copyWith(
              fontSize: 16.sp,
            ),
          ),
          verticalSpacing(30),
          AppButton(
            backgroundColor: ColorsManager.orangeColor,
            borderRadius: 16.sp,
            buttonText: 'Scan',
            onPressed: () {
              context.read<HomeCubit>().scanQRCode(context);
            },
          ),
        ],
      ),
    );
  }
}
