import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_courses_repsonse.g.dart';

@JsonSerializable()
class GetCoursesResponse {
  int? courseId;
  String? courseName;
  int? groupId;
  String? groupName;

  GetCoursesResponse({
    this.courseId,
    this.courseName,
    this.groupId,
    this.groupName,
  });

  factory GetCoursesResponse.fromJson(Map<String, dynamic> json) => _$GetCoursesResponseFromJson(json);
}
