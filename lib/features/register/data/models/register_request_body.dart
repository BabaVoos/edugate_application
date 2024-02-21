import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';
@JsonSerializable()
class RegisterRequestBody {
  final String displayName;
  final String email;
  final String phoneNumber;
  final String password;

  RegisterRequestBody({
    required this.displayName,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
