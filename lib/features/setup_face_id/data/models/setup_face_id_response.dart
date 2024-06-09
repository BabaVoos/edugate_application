import 'package:freezed_annotation/freezed_annotation.dart';
part 'setup_face_id_response.g.dart';

@JsonSerializable()
class SetupFaceIdResponse {
  String? imageUrl;
  String? message;

  SetupFaceIdResponse({
    this.imageUrl,
    this.message,
  });

  factory SetupFaceIdResponse.fromJson(Map<String, dynamic> json) => _$SetupFaceIdResponseFromJson(json);
}
