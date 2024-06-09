// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      displayName: json['displayName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'token': instance.token,
    };
