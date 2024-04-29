import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import 'attendance_history_list_view.dart';
import 'attendance_history_loading_widget.dart';
import 'history_arrow.dart';
import 'no_attendances_found_widget.dart';
import 'section_header.dart';

class LatestAttendancesSection extends StatefulWidget {
  const LatestAttendancesSection({
    super.key,
  });

  @override
  State<LatestAttendancesSection> createState() =>
      _LatestAttendancesSectionState();
}

class _LatestAttendancesSectionState extends State<LatestAttendancesSection> {
  @override
  void initState() {
    context.read<HomeCubit>().emitGetAttendanceHistoryState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(
          sectionTitle: 'Latest Attendances',
          icon: IconBroken.Calendar,
          traillingWidget: HistoryArrow(),
        ),
        verticalSpacing(15),
        BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is GetAttendanceHistorySuccess ||
              current is GetAttendanceHistoryLoading ||
              current is GetAttendanceHistoryFailed,
          builder: (context, state) {
            if (state is GetAttendanceHistorySuccess) {
              return state.data.isNotEmpty
                  ? AttendanceHistoryListView(
                      attendanceHistory: state.data,
                    )
                  : const NoAttendancesFoundWidget();
            } else if (state is GetAttendanceHistoryLoading) {
              return const AttendanceHistoryLoadingWidget();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }
}
