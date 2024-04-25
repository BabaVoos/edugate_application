import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_course_attendance_request_body.g.dart';

@JsonSerializable()
class GetCourseAttendanceRequestBody {
  final int studentId;
  final int courseId;
  final int groupId;

  GetCourseAttendanceRequestBody({
    required this.studentId,
    required this.courseId,
    required this.groupId,
  });


  Map<String, dynamic> toJson() => _$GetCourseAttendanceRequestBodyToJson(this);
}