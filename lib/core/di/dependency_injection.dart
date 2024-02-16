import 'package:dio/dio.dart';
import 'package:edugate_applocation/core/networking/api_service.dart';
import 'package:edugate_applocation/core/networking/dio_factory.dart';
import 'package:edugate_applocation/features/login/data/repos/login_repo.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}