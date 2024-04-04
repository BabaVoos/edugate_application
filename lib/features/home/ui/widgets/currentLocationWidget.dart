import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/cubit/home_cubit.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetLocationSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              context.read<HomeCubit>().currentLocation!,
              style: TextStyles.font14BlackMedium.copyWith(
                color: ColorsManager.greyColor.withOpacity(.7),
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
