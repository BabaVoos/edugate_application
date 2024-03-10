import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_body.g.dart';

@JsonSerializable()
class UpdateProfileBody {
  final String displayName;
  final String phoneNumber;

  UpdateProfileBody({
    required this.displayName,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() => _$UpdateProfileBodyToJson(this);
}
