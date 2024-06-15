// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TakeAttendanceResponse _$TakeAttendanceResponseFromJson(
        Map<String, dynamic> json) =>
    TakeAttendanceResponse(
      statusCode: json['statusCode'] as int?,
      message: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$TakeAttendanceResponseToJson(
        TakeAttendanceResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'errorMessage': instance.message,
    };
