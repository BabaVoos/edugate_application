// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileResponse _$UpdateProfileResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileResponse(
      json['displayName'] as String?,
      json['userName'] as String?,
      json['email'] as String?,
      json['phoneNumber'] as String?,
      json['token'] as String?,
    );

Map<String, dynamic> _$UpdateProfileResponseToJson(
        UpdateProfileResponse instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'token': instance.token,
    };
