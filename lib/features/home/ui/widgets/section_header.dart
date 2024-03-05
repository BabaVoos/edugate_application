import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.sectionTitle,
    required this.icon,
    this.traillingWidget,
  });

  final String sectionTitle;
  final IconData icon;
  final Widget? traillingWidget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Text(
            sectionTitle,
            style: TextStyles.font20BlueSemiBold,
          ),
          horizontalSpacing(10),
          Icon(
            icon,
            color: ColorsManager.blueColor,
          ),
          const Spacer(),
          traillingWidget ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
