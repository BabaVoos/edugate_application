import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/cubit/home_cubit.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetLocationSuccess || current is GetLocationLoading,
      builder: (context, state) {
        if (state is GetLocationLoading) {
          return Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const LinearProgressIndicator(
                backgroundColor: ColorsManager.orangeColor,
                valueColor:
                    AlwaysStoppedAnimation<Color>(ColorsManager.whiteColor),
              ),
            ),
          );
        } else {
          return context.read<HomeCubit>().currentLocation != ''
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          context.read<HomeCubit>().currentLocation,
                          style: TextStyles.font14BlackMedium.copyWith(
                            color: ColorsManager.greyColor.withOpacity(.7),
                          ),
                        ),
                      ),
                      horizontalSpacing(10),
                      Icon(
                        IconBroken.Location,
                        color: ColorsManager.greyColor.withOpacity(.7),
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink();
        }
      },
    );
  }
}
