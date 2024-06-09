import 'dart:convert';
import 'dart:io';
import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/take_attendance_request_body.dart';
import 'package:edugate_applocation/features/check_attendance/data/repos/comapre_images_repo.dart';
import 'package:edugate_applocation/features/check_attendance/data/repos/get_image_repo.dart';
import 'package:edugate_applocation/features/check_attendance/data/repos/take_attendance_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'check_attendance_state.dart';

class CheckAttendanceCubit extends Cubit<CheckAttendanceState> {
  final CompareImagesRepo _compareImagesRepo;
  final GetImageRepo _getImageRepo;
  final TakeAttendanceRepo _takeAttendanceRepo;
  CheckAttendanceCubit(
      this._compareImagesRepo, this._getImageRepo, this._takeAttendanceRepo)
      : super(const CheckAttendanceState.initial());

  String? image1;
  ImagePicker picker = ImagePicker();

  String getImage() {
    if (CacheHelper.getData(key: 'image') == null ||
        CacheHelper.getData(key: 'image') == '') {
      return image1!;
    }
    return CacheHelper.getData(key: 'image');
  }

  Future<String> pickImage() async {
    String base64Image = '';
    await picker
        .pickImage(
      source: ImageSource.camera,
      imageQuality: 70,
      preferredCameraDevice: CameraDevice.front,
    )
        .then((value) {
      final bytes = File(value!.path).readAsBytesSync();
      base64Image = base64Encode(bytes);
      return base64Image;
    });
    return base64Image;
  }

  Future<void> pickImageThenEmitCompareImagesState() async {
    await pickImage().then(
      (value) async {
        emit(const CheckAttendanceState.compareImagesLoading());
        final respone =
            await _compareImagesRepo.comapreImages(getImage(), value);
        respone.when(
          success: (comapreImagesReponse) {
            emit(
              CheckAttendanceState.compareImagesSuccess(
                comapreImagesReponse,
              ),
            );
          },
          failure: (error) {
            emit(
              CheckAttendanceState.compareImagesError(
                  error.apiErrorModel.errorMessage ??
                      'SomeThing Went Wrong, Please Try Again'),
            );
          },
        );
      },
    );
  }

  Future<void> emitGetImageState() async {
    emit(const CheckAttendanceState.getImageLoading());
    final respone = await _getImageRepo.getImage();
    respone.when(
      success: (getImageResponse) {
        CacheHelper.updateData(key: 'image', value: getImageResponse.imageUrl);
        image1 = getImageResponse.imageUrl;
        emit(CheckAttendanceState.getImageSuccess(getImageResponse));
      },
      failure: (error) {
        emit(
          CheckAttendanceState.getImageError(
            error.apiErrorModel.error ?? '',
          ),
        );
      },
    );
  }

  Future<void> emitTakeAttendanceState(
      TakeAttendanceRequestBody takeAttendanceRequestBody) async {
    emit(
      const CheckAttendanceState.takeAttendanceLodaing(),
    );
    final respone =
        await _takeAttendanceRepo.takeAttendance(takeAttendanceRequestBody);
    respone.when(
      success: (takeAttendanceResponse) {
        emit(
            CheckAttendanceState.takeAttendanceSuccess(takeAttendanceResponse));
      },
      failure: (error) {
        emit(
          CheckAttendanceState.takeAttendanceError(
            error.apiErrorModel.errorMessage ??
                'SomeThing Went Wrong, Please Try Again',
          ),
        );
      },
    );
  }
}
