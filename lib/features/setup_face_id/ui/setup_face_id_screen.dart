import 'package:edugate_applocation/core/helpers/spacing.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/core/widgets/app_title_and_button.dart';
import 'package:edugate_applocation/core/widgets/custom_background.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_cubit.dart';
import 'package:edugate_applocation/features/setup_face_id/ui/widgets/setup_face_id_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

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
    setState(() {});
    super.initState();
  }

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
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
                onTap: () async {
                  pickImageThenEmit(image);
                },
              ),
              const SetupFaceIdBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> pickImageThenEmit(XFile? image) async {
    image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {});
    if (image != null) {
      context.read<SetupFaceIdCubit>().emitSetupFaceIdStates(image);
    }
  }
}
