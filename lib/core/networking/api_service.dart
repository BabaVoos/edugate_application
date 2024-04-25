import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_constants.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:edugate_applocation/features/login/data/models/login_request_body.dart';
import 'package:edugate_applocation/features/login/data/models/login_response.dart';
import 'package:edugate_applocation/features/profile/data/models/update_profile_response.dart';
import 'package:edugate_applocation/features/register/data/models/register_request_body.dart';
import 'package:edugate_applocation/features/register/data/models/register_response.dart';
import 'package:retrofit/http.dart';

import '../../features/course_attendance/data/models/get_course_attendance_request_body.dart';
import '../../features/course_attendance/data/models/get_course_attendance_response.dart';
import '../../features/profile/data/models/update_profile_body.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.testingBaseUrl)
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

  @GET(ApiConstants.getCourses)
  Future<List<GetCoursesResponse>> getCourses(
    @Query("studentId") String studentId,
  );

  @GET(ApiConstants.getCourseAttendance)
  Future<List<GetCourseAttendanceResponse>> getCourseAttendance(
    @Body() GetCourseAttendanceRequestBody getCourseAttendanceRequestBody,
  );
}
