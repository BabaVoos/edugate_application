import 'package:edugate_applocation/features/home/ui/widgets/latest_attendances_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import 'widgets/courses_section.dart';
import 'widgets/grettings_text.dart';
import 'widgets/qr_scanning.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GrettingsText(),
            verticalSpacing(20),
            const QrScanningWidget(),
            verticalSpacing(20),
            const CoursesSection(),
            verticalSpacing(20),
            const LatestAttendancesSection(),
          ],
        ),
      ),
    );
  }
}
