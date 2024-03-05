import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/cached_data.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/my_rich_text.dart';

class GrettingsText extends StatelessWidget {
  const GrettingsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: MyRichText(
        firstText: 'Grettings\n',
        firstTextStyle: TextStyles.font24BlueSemiBold,
        secondTextStyle: TextStyles.font24BlueRegular,
        secondText: CachedData.displayName.toString(),
      ),
    );
  }
}