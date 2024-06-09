import 'dart:developer';

import 'package:edugate_applocation/core/networking/api_error_handler.dart';
import 'package:edugate_applocation/core/networking/api_result.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/compare_images_request_body.dart';

import '../models/comapre_images_reponse_body.dart';

class CompareImagesRepo {
  final ApiService _apiService;

  CompareImagesRepo(this._apiService);

  Future<ApiResult<CompareImagesResponseBody>> comapreImages(
    String image1,
    String image2,
  ) async {
    try {
      final response = await _apiService.compareImages(
        CompareImagesRequestBody(image1: image1, image2: image2),
      );
      return ApiResult.success(response);
    } catch (e) {
      log('This is repo error $e');
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
