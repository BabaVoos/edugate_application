import 'package:edugate_applocation/core/helpers/cached_data.dart';
import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/app_title_and_button.dart';
import 'package:edugate_applocation/core/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SetupFaceIdScreen extends StatefulWidget {
  const SetupFaceIdScreen({
    super.key,
  });

  @override
  State<SetupFaceIdScreen> createState() => _SetupFaceIdScreenState();
}

class _SetupFaceIdScreenState extends State<SetupFaceIdScreen> {
  @override
  void initState() {
    CachedData.getAndSaveUserData();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomBackground(
        horizontalPadding: 24,
        imagePath: 'assets/images/background.png',
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpacing(238),
              SvgPicture.asset(
                'assets/svgs/setup_face_id.svg',
                fit: BoxFit.fill,
              ),
              verticalSpacing(40),
              Text(
                'Setup Face ID',
                style: TextStyles.font42BlueMedium.copyWith(fontSize: 36.sp),
              ),
              verticalSpacing(20),
              Text(
                'Clean your camera,\nhold still, and make sure\nthe environment is well.',
                style: TextStyles.font16GreyMedium,
                textAlign: TextAlign.center,
              ),
              verticalSpacing(60),
              AppTitleAndButton(
                buttonTitle: 'Scan my face',
                backgroundColor: ColorsManager.orangeColor,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
