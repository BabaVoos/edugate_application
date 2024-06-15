// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_attendance_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TakeAttendanceRequestBody _$TakeAttendanceRequestBodyFromJson(
        Map<String, dynamic> json) =>
    TakeAttendanceRequestBody(
      studentId: json['studentId'] as int,
      courseId: json['courseId'] as int,
      groupId: json['groupId'] as int,
      lectureNumber: json['lectureNumber'] as int,
    );

Map<String, dynamic> _$TakeAttendanceRequestBodyToJson(
        TakeAttendanceRequestBody instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'courseId': instance.courseId,
      'groupId': instance.groupId,
      'lectureNumber': instance.lectureNumber,
    };
