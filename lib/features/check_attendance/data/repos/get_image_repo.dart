import 'package:edugate_applocation/core/networking/api_error_handler.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/core/networking/cache_helper.dart';

import '../../../../core/networking/api_result.dart';
import '../models/get_image_response_body.dart';

class GetImageRepo {
  final ApiService _apiService;

  GetImageRepo(this._apiService);

  Future<ApiResult<GetImageResponse>> getImage() async {
    try {
      String studentId = CacheHelper.getData(key: 'userName');
      final response = await _apiService.getImage(studentId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
