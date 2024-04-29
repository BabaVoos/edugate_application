import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_attendance_history_response.g.dart';

@JsonSerializable()
class GetAttendanceHistoryResponse {
  String? date;
  List<AttendanceRecord>? attendanceRecords;

  GetAttendanceHistoryResponse({
    this.date,
    this.attendanceRecords,
  });

  factory GetAttendanceHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAttendanceHistoryResponseFromJson(json);
}

@JsonSerializable()
class AttendanceRecord {
  int? lectureNumber;
  String? courseName;
  String? code;
  String? groupName;

  AttendanceRecord({
    this.lectureNumber,
    this.courseName,
    this.code,
    this.groupName,
  });

  factory AttendanceRecord.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordFromJson(json);
}
