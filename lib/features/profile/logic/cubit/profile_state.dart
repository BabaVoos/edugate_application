import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.updateProfileloading() = UpdateProfileloading;
  const factory ProfileState.updateProfileSuccess(T data) = UpdateProfileSuccess<T>;
  const factory ProfileState.updateProfileError({required String message}) = UpdateProfileError;

  const factory ProfileState.logoutSuccess() = LogoutSuccess;
  const factory ProfileState.logoutError({required String message}) = LogoutError;
}
