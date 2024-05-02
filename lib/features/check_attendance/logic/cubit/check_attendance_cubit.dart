import 'package:edugate_applocation/features/check_attendance/data/repos/comapre_images_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'check_attendance_state.dart';

class CheckAttendanceCubit extends Cubit<CheckAttendanceState> {
  final CompareImagesRepo _compareImagesRepo;
  CheckAttendanceCubit(this._compareImagesRepo)
      : super(const CheckAttendanceState.initial());

  Future<void> emitCompareImagesState(String image2) async {
    emit(const CheckAttendanceState.compareImagesLoading());
    final respone = await _compareImagesRepo.comapreImages('', image2);
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
}
