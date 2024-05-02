import 'package:freezed_annotation/freezed_annotation.dart';
part 'compare_images_request_body.g.dart';

@JsonSerializable()
class CompareImagesRequestBody {
  @JsonKey(name: 'img1_base64')
  final String image1;
  @JsonKey(name: 'img2_base64')
  final String image2;

  CompareImagesRequestBody({required this.image1, required this.image2});

  Map<String, dynamic> toJson() => _$CompareImagesRequestBodyToJson(this);
}
