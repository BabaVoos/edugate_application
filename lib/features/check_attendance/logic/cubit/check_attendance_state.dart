import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_attendance_state.freezed.dart';

@freezed
class CheckAttendanceState<T> with _$CheckAttendanceState<T> {
  const factory CheckAttendanceState.initial() = _Initial;
  const factory CheckAttendanceState.compareImagesLoading() = CompareImagesLoading;
  const factory CheckAttendanceState.compareImagesSuccess(T data) = CompareImagesSuccess;
  const factory CheckAttendanceState.compareImagesError(String message) = CompareImagesError;

  const factory CheckAttendanceState.getImageLoading() = GetImageLoading;
  const factory CheckAttendanceState.getImageSuccess(T data) = GetImageSuccess;
  const factory CheckAttendanceState.getImageError(String message) = GetImageError;
}
