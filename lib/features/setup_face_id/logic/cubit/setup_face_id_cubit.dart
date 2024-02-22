import 'package:edugate_applocation/core/helpers/cached_data.dart';
import 'package:edugate_applocation/features/setup_face_id/data/repos/setup_face_id_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'setup_face_id_state.dart';

class SetupFaceIdCubit extends Cubit<SetupFaceIdState> {
  final SetupFaceIdRepo _setupFaceIdRepo;
  SetupFaceIdCubit(
    this._setupFaceIdRepo,
  ) : super(const SetupFaceIdState.setupFaceIdInitial());

  void emitSetupFaceIdStates(XFile image) async {
    emit(const SetupFaceIdState.setupFaceIdLoading());
    final response = await _setupFaceIdRepo.setupFaceId(
      CachedData.userName!,
      image.path,
    );
    response.when(
      success: (setupFaceIdResponse) {
        emit(SetupFaceIdState.setupFaceIdSuccess(setupFaceIdResponse));
      },
      failure: (error) {
        emit(SetupFaceIdState.setupFaceIError(
            message: error.apiErrorModel.errors![0]));
      },
    );
  }
}