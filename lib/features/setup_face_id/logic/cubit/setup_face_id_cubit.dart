import 'package:edugate_applocation/features/setup_face_id/data/repos/setup_face_id_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/networking/cache_helper.dart';
import 'setup_face_id_state.dart';

class SetupFaceIdCubit extends Cubit<SetupFaceIdState> {
  final SetupFaceIdRepo _setupFaceIdRepo;
  SetupFaceIdCubit(
    this._setupFaceIdRepo,
  ) : super(const SetupFaceIdState.setupFaceIdInitial());

  void emitSetupFaceIdStates(XFile image) async {
    emit(const SetupFaceIdState.setupFaceIdLoading());
    final response = await _setupFaceIdRepo.setupFaceId(
      CacheHelper.getData(key: 'userName').toString(),
      image.path,
    );
    response.when(
      success: (setupFaceIdResponse) {
        CacheHelper.saveData(key: 'image', value: setupFaceIdResponse.imageUrl);
        emit(SetupFaceIdState.setupFaceIdSuccess(setupFaceIdResponse));
      },
      failure: (error) {
        print('Error From Cubit ${error.apiErrorModel.error}');
        emit(SetupFaceIdState.setupFaceIError(
            message: error.apiErrorModel.errors![0]));
      },
    );
  }
}
