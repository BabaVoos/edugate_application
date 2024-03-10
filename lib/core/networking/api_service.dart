import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_constants.dart';
import 'package:edugate_applocation/features/login/data/models/login_request_body.dart';
import 'package:edugate_applocation/features/login/data/models/login_response.dart';
import 'package:edugate_applocation/features/profile/data/models/update_profile_response.dart';
import 'package:edugate_applocation/features/register/data/models/register_request_body.dart';
import 'package:edugate_applocation/features/register/data/models/register_response.dart';
import 'package:retrofit/http.dart';

import '../../features/profile/data/models/update_profile_body.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  @PUT(ApiConstants.updateUserProfile)
  Future<UpdateProfileResponse> updateUserProfile(
    @Header('Authorization') String token,
    @Body() UpdateProfileBody updateProfileBody,
  );
}
