// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_courses_repsonse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCoursesResponse _$GetCoursesResponseFromJson(Map<String, dynamic> json) =>
    GetCoursesResponse(
      courseId: json['courseId'] as int?,
      courseName: json['courseName'] as String?,
      groupId: json['groupId'] as int?,
      groupName: json['groupName'] as String?,
    );

Map<String, dynamic> _$GetCoursesResponseToJson(GetCoursesResponse instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
    };
