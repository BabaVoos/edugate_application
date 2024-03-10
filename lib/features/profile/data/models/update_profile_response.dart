import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_response.g.dart';

@JsonSerializable()
class UpdateProfileResponse {
  final String? displayName;
  final String? userName;
  final String? email;
  final String? phoneNumber;
  final String? token;

  UpdateProfileResponse(
    this.displayName,
    this.userName,
    this.email,
    this.phoneNumber,
    this.token,
  );


  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) => _$UpdateProfileResponseFromJson(json);
}
