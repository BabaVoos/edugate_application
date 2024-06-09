import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response.g.dart';
@JsonSerializable()
class RegisterResponse {
  String? displayName;
  String? userName;
  String? email;
  String? phoneNumber;
  String? token;

  RegisterResponse({
    this.displayName,
    this.userName,
    this.email,
    this.phoneNumber,
    this.token,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);
}
