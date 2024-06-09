import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/home/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class NoCoursesFoundedWidget extends StatelessWidget {
  const NoCoursesFoundedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          sectionTitle: 'Courses',
          icon: IconBroken.Category,
        ),
        verticalSpacing(5),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            'No courses found',
            style: TextStyles.font16GreyMedium,
          ),
        ),
      ],
    );
  }
}
