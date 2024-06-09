import 'package:edugate_applocation/core/networking/api_error_handler.dart';
import 'package:edugate_applocation/core/networking/api_result.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/features/course_attendance/data/models/get_course_attendance_request_body.dart';
import 'package:edugate_applocation/features/course_attendance/data/models/get_course_attendance_response.dart';

class GetCourseAttendanceRepo {
  final ApiService _apiService;

  GetCourseAttendanceRepo(this._apiService);

  Future<ApiResult<List<GetCourseAttendanceResponse>>> getCourseAttendance(
      GetCourseAttendanceRequestBody getCourseAttendanceRequestBody) async {
    try {
      final response =
          await _apiService.getCourseAttendance(getCourseAttendanceRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
