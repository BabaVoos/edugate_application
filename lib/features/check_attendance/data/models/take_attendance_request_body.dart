import 'package:freezed_annotation/freezed_annotation.dart';
part 'take_attendance_request_body.g.dart';

@JsonSerializable()
class TakeAttendanceRequestBody {
  final int studentId;
  final int courseId;
  final int groupId;
  final int lectureNumber;

  TakeAttendanceRequestBody({
    required this.studentId,
    required this.courseId,
    required this.groupId,
    required this.lectureNumber,
  });

  Map<String, dynamic> toJson() => _$TakeAttendanceRequestBodyToJson(this);
}
