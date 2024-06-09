import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_image_response_body.g.dart';

@JsonSerializable()
class GetImageResponse {
  String? imageUrl;
  String? message;

  GetImageResponse({
    this.imageUrl,
    this.message,
  });

  factory GetImageResponse.fromJson(Map<String, dynamic> json) => _$GetImageResponseFromJson(json);
}
