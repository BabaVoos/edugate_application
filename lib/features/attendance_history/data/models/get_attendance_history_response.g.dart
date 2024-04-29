// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_attendance_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAttendanceHistoryResponse _$GetAttendanceHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    GetAttendanceHistoryResponse(
      date: json['date'] as String?,
      attendanceRecords: (json['attendanceRecords'] as List<dynamic>?)
          ?.map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAttendanceHistoryResponseToJson(
        GetAttendanceHistoryResponse instance) =>
    <String, dynamic>{
      'date': instance.date,
      'attendanceRecords': instance.attendanceRecords,
    };

AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) =>
    AttendanceRecord(
      lectureNumber: json['lectureNumber'] as int?,
      courseName: json['courseName'] as String?,
      code: json['code'] as String?,
      groupName: json['groupName'] as String?,
    );

Map<String, dynamic> _$AttendanceRecordToJson(AttendanceRecord instance) =>
    <String, dynamic>{
      'lectureNumber': instance.lectureNumber,
      'courseName': instance.courseName,
      'code': instance.code,
      'groupName': instance.groupName,
    };
