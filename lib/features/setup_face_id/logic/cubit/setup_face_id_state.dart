import 'package:freezed_annotation/freezed_annotation.dart';
part 'setup_face_id_state.freezed.dart';

@freezed
class SetupFaceIdState<T> with _$SetupFaceIdState<T> {
  const factory SetupFaceIdState.setupFaceIdInitial() = _Initial;
  const factory SetupFaceIdState.setupFaceIdLoading() = SetupFaceIdLoading;
  const factory SetupFaceIdState.setupFaceIdSuccess(T data) = SetupFaceIdSuccess<T>;
  const factory SetupFaceIdState.setupFaceIError({required String message}) = SetupFaceIdError;
}
