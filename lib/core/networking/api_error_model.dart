import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? errorMessage;
  final List<String>? errors;
  final int? statusCode;
  final String? error;

  const ApiErrorModel({this.errorMessage, this.statusCode, this.errors,this.error});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
