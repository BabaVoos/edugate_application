import 'package:json_annotation/json_annotation.dart';
part 'take_attendance_response.g.dart';

@JsonSerializable()
class TakeAttendanceResponse {
  final int? statusCode;
  @JsonKey(name: 'errorMessage')
  final String? message;

  const TakeAttendanceResponse({this.statusCode, this.message});

  factory TakeAttendanceResponse.fromJson(Map<String, dynamic> json) => _$TakeAttendanceResponseFromJson(json);
}
