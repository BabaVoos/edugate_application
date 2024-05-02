import 'package:freezed_annotation/freezed_annotation.dart';
part 'comapre_images_reponse_body.g.dart';

@JsonSerializable()
class CompareImagesResponseBody {
  String? result;
  String? error;

  CompareImagesResponseBody({
    this.result,
    this.error,
  });

  factory CompareImagesResponseBody.fromJson(Map<String, dynamic> json) => _$CompareImagesResponseBodyFromJson(json);
}
