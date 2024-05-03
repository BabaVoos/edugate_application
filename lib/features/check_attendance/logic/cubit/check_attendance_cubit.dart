import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/features/check_attendance/data/repos/comapre_images_repo.dart';
import 'package:edugate_applocation/features/check_attendance/data/repos/get_image_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'check_attendance_state.dart';

class CheckAttendanceCubit extends Cubit<CheckAttendanceState> {
  final CompareImagesRepo _compareImagesRepo;
  final GetImageRepo _getImageRepo;
  CheckAttendanceCubit(this._compareImagesRepo, this._getImageRepo)
      : super(const CheckAttendanceState.initial());

  String? image1;

  String getImage() {
    if (CacheHelper.getData(key: 'image') == null ||
        CacheHelper.getData(key: 'image') == '') {
      return image1!;
    }
    return CacheHelper.getData(key: 'image');
  }

  Future<void> emitCompareImagesState(String image2) async {
    emit(const CheckAttendanceState.compareImagesLoading());
    final respone = await _compareImagesRepo.comapreImages(getImage(), image2);
    respone.when(
      success: (comapreImagesReponse) {
        emit(CheckAttendanceState.compareImagesSuccess(comapreImagesReponse));
      },
      failure: (error) {
        print(error.apiErrorModel.error);
        emit(
          CheckAttendanceState.compareImagesError(
              error.apiErrorModel.errorMessage ??
                  'SomeThing Went Wrong, Please Try Again'),
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
}
