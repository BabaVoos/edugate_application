import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_course_attendance_response.g.dart';
@JsonSerializable()
class GetCourseAttendanceResponse {
  List<bool>? attendanceStatus;

  GetCourseAttendanceResponse({
    this.attendanceStatus,
  });

  factory GetCourseAttendanceResponse.fromJson(Map<String, dynamic> json) => _$GetCourseAttendanceResponseFromJson(json);
}
