import 'package:edugate_applocation/core/networking/api_error_handler.dart';
import 'package:edugate_applocation/core/networking/cache_helper.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/update_profile_body.dart';
import '../models/update_profile_response.dart';

class UpdateProfileRepo {
  final ApiService _apiService;

  UpdateProfileRepo(this._apiService);

  Future<ApiResult<UpdateProfileResponse>> updateUserProfile({
    required UpdateProfileBody updateProfileBody,
  }) async {
    try {
      final response = await _apiService.updateUserProfile(
        'Bearer ${CacheHelper.getData(key: 'token')}',
        updateProfileBody,
      );
      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
