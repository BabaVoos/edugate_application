import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getLocationLoading() = GetLocationLoading;
  const factory HomeState.getLocationSuccess(T data) = GetLocationSuccess<T>;
  const factory HomeState.getLocationFailed({required String message}) =
      GetLocationFailed;

  const factory HomeState.getCoursesLoading() = GetCoursesLoading;
  const factory HomeState.getCoursesSuccess(T data) = GetCoursesSuccess<T>;
  const factory HomeState.getCoursesFailed({required String message}) = GetCoursesFailed;
}
