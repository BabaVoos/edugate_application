import 'package:edugate_applocation/core/networking/api_result.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';

import '../../../../core/networking/api_error_handler.dart';

class GetCoursesRepo {
  final ApiService _apiService;

  GetCoursesRepo(this._apiService);

  Future<ApiResult<List<GetCoursesResponse>>> getCourses() async {
    try {
      String studentId = await CacheHelper.getData(key: 'userName');
      final response = await _apiService.getCourses(studentId);
      return ApiResult.success(response);
    } catch (error) {
      print(error);
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
