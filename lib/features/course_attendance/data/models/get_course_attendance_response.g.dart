// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_course_attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCourseAttendanceResponse _$GetCourseAttendanceResponseFromJson(
        Map<String, dynamic> json) =>
    GetCourseAttendanceResponse(
      attendanceStatus: (json['attendanceStatus'] as List<dynamic>?)
          ?.map((e) => e as bool)
          .toList(),
    );

Map<String, dynamic> _$GetCourseAttendanceResponseToJson(
        GetCourseAttendanceResponse instance) =>
    <String, dynamic>{
      'attendanceStatus': instance.attendanceStatus,
    };
