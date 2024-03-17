import 'package:edugate_applocation/core/helpers/extinsions.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

import '../theming/colors.dart';

AppBar buildSubScreensAppBar(BuildContext context, String title) {
  return AppBar(
    elevation: 5,
    leading: IconButton(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(
        IconBroken.Arrow___Left_2,
      ),
    ),
    centerTitle: true,
    backgroundColor: ColorsManager.blueColor,
    title: Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyles.font18WhiteSemiBold.copyWith(fontSize: 22.sp),
    ),
  );
}
