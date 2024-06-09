import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_constants.dart';
import 'package:edugate_applocation/features/attendance_history/data/models/get_attendance_history_response.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/comapre_images_reponse_body.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/compare_images_request_body.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/get_image_response_body.dart';
import 'package:edugate_applocation/features/check_attendance/data/models/take_attendance_response.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:edugate_applocation/features/login/data/models/login_request_body.dart';
import 'package:edugate_applocation/features/login/data/models/login_response.dart';
import 'package:edugate_applocation/features/profile/data/models/update_profile_response.dart';
import 'package:edugate_applocation/features/register/data/models/register_request_body.dart';
import 'package:edugate_applocation/features/register/data/models/register_response.dart';
import 'package:retrofit/http.dart';
import '../../features/check_attendance/data/models/take_attendance_request_body.dart';
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

  @POST(ApiConstants.logout)
  Future<String> logout();

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

  @GET(ApiConstants.getAttendanceHistory)
  Future<List<GetAttendanceHistoryResponse>> getAttendanceHistory(
    @Query("studentId") String studentId,
  );

  @POST(
    ApiConstants.comapreImages,
  )
  Future<CompareImagesResponseBody> compareImages(
    @Body() CompareImagesRequestBody compareImagesRequestBody,
  );

  @GET(ApiConstants.getImage)
  Future<GetImageResponse> getImage(
    @Query("studentId") String studetId,
  );

  @POST(ApiConstants.takeAttendance)
  Future<TakeAttendanceResponse> takeAttendance(
    @Body() TakeAttendanceRequestBody takeAttendanceRequestBody,
  );
}
