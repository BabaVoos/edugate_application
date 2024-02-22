import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/core/networking/dio_factory.dart';
import 'package:edugate_applocation/features/login/data/repos/login_repo.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:edugate_applocation/features/register/data/repos/register_repo.dart';
import 'package:get_it/get_it.dart';

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
}
