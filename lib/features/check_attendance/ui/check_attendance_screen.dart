import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/core/theming/styles.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_cubit.dart';
import 'package:edugate_applocation/features/check_attendance/logic/cubit/check_attendance_state.dart';
import 'package:edugate_applocation/features/home/data/models/qr_code_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/theming/colors.dart';
import '../../../core/widgets/sub_screens_app_bar.dart';
import 'widgets/check_attendance_body.dart';

class CheckAttendanceScreen extends StatefulWidget {
  const CheckAttendanceScreen({super.key, required this.qrResult});
  final QRCodeDataModel qrResult;

  @override
  State<CheckAttendanceScreen> createState() => _CheckAttendanceScreenState();
}

class _CheckAttendanceScreenState extends State<CheckAttendanceScreen> {
  final ImagePicker picker = ImagePicker();

  @override
  void initState() {
    if (CacheHelper.getData(key: 'image') == null ||
        CacheHelper.getData(key: 'image') == '') {
      context.read<CheckAttendanceCubit>().emitGetImageState();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSubScreensAppBar(
        context,
        'Check Attendance',
      ),
      body: BlocBuilder<CheckAttendanceCubit, CheckAttendanceState>(
        buildWhen: (previous, current) =>
            current is GetImageLoading ||
            current is GetImageSuccess ||
            current is GetImageSuccess,
        builder: (context, state) {
          if (state is GetImageLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: .5,
                color: ColorsManager.blueColor,
              ),
            );
          } else if (state is GetImageSuccess ||
              CacheHelper.getData(key: 'image') != '' ||
              CacheHelper.getData(key: 'image') != null) {
            return CheckAttendanceBody(
              qrRsult: widget.qrResult,
              onTap: () {
                context
                    .read<CheckAttendanceCubit>()
                    .pickImageThenEmitCompareImagesState();
              },
            );
          } else {
            return Center(
                child: Text(
              'Something went wrong, please try again',
              style: TextStyles.font20BlueSemiBold,
            ));
          }
        },
      ),
    );
  }
}
