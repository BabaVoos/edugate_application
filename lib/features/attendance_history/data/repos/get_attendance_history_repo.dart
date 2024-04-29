import 'package:edugate_applocation/core/networking/api_error_handler.dart';
import 'package:edugate_applocation/core/networking/api_result.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/features/attendance_history/data/models/get_attendance_history_response.dart';

import '../../../../core/networking/cache_helper.dart';

class GetAttendanceHistoryRepo {
  final ApiService _apiService;

  GetAttendanceHistoryRepo(this._apiService);

  Future<ApiResult<List<GetAttendanceHistoryResponse>>>
      getAttendanceHistory() async {
    try {
      String studentId = await CacheHelper.getData(key: 'userName');
      final response = await _apiService.getAttendanceHistory(studentId);
      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(
        ErrorHandler.handle(e),
      );
    }
  }
}
