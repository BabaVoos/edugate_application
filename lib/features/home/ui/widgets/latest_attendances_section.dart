import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import 'attendance_container.dart';
import 'section_header.dart';

class LatestAttendancesSection extends StatelessWidget {
  const LatestAttendancesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          sectionTitle: 'Latest Attendances',
          icon: IconBroken.Calendar,
          traillingWidget: IconButton(
            onPressed: () {},
            icon: const Icon(
              IconBroken.Arrow___Right_3,
              color: ColorsManager.blueColor,
            ),
          ),
        ),
        verticalSpacing(15),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const AttendanceWidget();
          },
        ),
      ],
    );
  }
}
