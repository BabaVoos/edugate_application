import 'package:freezed_annotation/freezed_annotation.dart';
part 'course_attendance_state.freezed.dart';

@freezed
class CourseAttendanceState<T> with _$CourseAttendanceState<T> {
  const factory CourseAttendanceState.initial() = _Initial;
  const factory CourseAttendanceState.getCourseAttendanceLoading() = GetCourseAttendanceLoading;
  const factory CourseAttendanceState.getCourseAttendanceSuccess(T data) = GetCourseAttendanceSuccess<T>;
  const factory CourseAttendanceState.getCourseAttendanceFailure({required String error}) = GetCourseAttendanceFailure;
}
