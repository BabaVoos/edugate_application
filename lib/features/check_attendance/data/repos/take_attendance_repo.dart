import 'package:edugate_applocation/core/networking/api_result.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/take_attendance_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/take_attendance_request_body.dart';

class TakeAttendanceRepo {
  final ApiService _apiService;

  TakeAttendanceRepo(this._apiService);

  Future<ApiResult<TakeAttendanceResponse>> takeAttendance(
    TakeAttendanceRequestBody takeAttendanceRequestBody,
  ) async {
    try {
      final response = await _apiService.takeAttendance(takeAttendanceRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
