import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';

class HistoryArrow extends StatelessWidget {
  const HistoryArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is GetAttendanceHistorySuccess,
      builder: (context, state) {
        if (state is GetAttendanceHistorySuccess) {
          return IconButton(
            onPressed: () {
              context.pushNamed(
                Routes.attendanceHistoryScreen,
                arguments: state.data,
              );
            },
            icon: const Icon(
              IconBroken.Arrow___Right_3,
              color: ColorsManager.blueColor,
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
