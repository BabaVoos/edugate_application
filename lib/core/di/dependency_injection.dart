import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/core/networking/dio_factory.dart';
import 'package:edugate_applocation/features/course_attendance/data/repos/get_course_attendance_repo.dart';
import 'package:edugate_applocation/features/course_attendance/logic/cubit/course_attendance_cubit.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:edugate_applocation/features/login/data/repos/login_repo.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:edugate_applocation/features/profile/data/repos/update_profile_repo.dart';
import 'package:edugate_applocation/features/profile/logic/cubit/profile_cubit.dart';
import 'package:edugate_applocation/features/register/data/repos/register_repo.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/reops/get_courses_repo.dart';
import '../../features/register/logic/cubit/register_cubit.dart';
import '../../features/setup_face_id/data/repos/setup_face_id_repo.dart';
import '../../features/setup_face_id/logic/cubit/setup_face_id_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // Register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt<ApiService>()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt<RegisterRepo>()));

  // SetupFaceId
  getIt.registerLazySingleton<SetupFaceIdRepo>(() => SetupFaceIdRepo(getIt<ApiService>()));
  getIt.registerFactory<SetupFaceIdCubit>(() => SetupFaceIdCubit(getIt<SetupFaceIdRepo>()));

  // Profile
  getIt.registerFactory<UpdateProfileRepo>(() => UpdateProfileRepo(getIt<ApiService>()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt<UpdateProfileRepo>(), getIt<ApiService>()));

  // Home
  getIt.registerLazySingleton<GetCoursesRepo>(() => GetCoursesRepo(getIt<ApiService>()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<GetCoursesRepo>()));

  // Course Attendance
    getIt.registerLazySingleton<GetCourseAttendanceRepo>(() => GetCourseAttendanceRepo(getIt<ApiService>()));
    getIt.registerFactory<CourseAttendanceCubit>(() => CourseAttendanceCubit(getIt<GetCourseAttendanceRepo>()));
}
