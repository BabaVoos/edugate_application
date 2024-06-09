// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compare_images_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompareImagesRequestBody _$CompareImagesRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CompareImagesRequestBody(
      image1: json['img1_base64'] as String,
      image2: json['img2_base64'] as String,
    );

Map<String, dynamic> _$CompareImagesRequestBodyToJson(
        CompareImagesRequestBody instance) =>
    <String, dynamic>{
      'img1_base64': instance.image1,
      'img2_base64': instance.image2,
    };
