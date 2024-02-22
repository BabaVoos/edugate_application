// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_face_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetupFaceIdResponse _$SetupFaceIdResponseFromJson(Map<String, dynamic> json) =>
    SetupFaceIdResponse(
      imageUrl: json['imageUrl'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SetupFaceIdResponseToJson(
        SetupFaceIdResponse instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'message': instance.message,
    };
