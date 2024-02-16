import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? displayName;
  String? userName;
  String? email;
  String? phoneNumber;
  String? token;

  LoginResponse({
    this.displayName,
    this.userName,
    this.email,
    this.phoneNumber,
    this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
