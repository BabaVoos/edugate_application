// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_course_attendance_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCourseAttendanceRequestBody _$GetCourseAttendanceRequestBodyFromJson(
        Map<String, dynamic> json) =>
    GetCourseAttendanceRequestBody(
      studentId: json['studentId'] as int,
      courseId: json['courseId'] as int,
      groupId: json['groupId'] as int,
    );

Map<String, dynamic> _$GetCourseAttendanceRequestBodyToJson(
        GetCourseAttendanceRequestBody instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'courseId': instance.courseId,
      'groupId': instance.groupId,
    };
