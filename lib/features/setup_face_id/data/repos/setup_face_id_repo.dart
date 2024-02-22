// ignore_for_file: unused_field
import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_constants.dart';
import 'package:edugate_applocation/core/networking/api_result.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/features/setup_face_id/data/models/setup_face_id_response.dart';
import '../../../../core/networking/api_error_handler.dart';

class SetupFaceIdRepo {
  final ApiService _apiService;

  SetupFaceIdRepo(this._apiService);

  // upload image to api works with this code now but need to be refactored later to be in api service class
  Future<ApiResult<SetupFaceIdResponse>> setupFaceId(
    String studentId,
    String imagePath,
  ) async {
    FormData formData = FormData();
    formData.files.add(
      MapEntry('formFile', await MultipartFile.fromFile(imagePath)),
    );
    try {
      final response = await Dio().put(
        '${ApiConstants.baseUrl}${ApiConstants.uploadImage}',
        queryParameters: {
          'studentId': studentId,
        },
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
        ),
      );
      print(response.data);
      return ApiResult.success(SetupFaceIdResponse.fromJson(response.data));
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
