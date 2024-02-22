// ignore_for_file: unused_local_variable
import 'package:edugate_applocation/core/di/dependency_injection.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_cubit.dart';
import 'package:edugate_applocation/features/setup_face_id/ui/setup_face_id_screen.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:edugate_applocation/features/login/ui/login_screen.dart';
import 'package:edugate_applocation/features/register/ui/register_screen.dart';
import 'package:edugate_applocation/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/register/logic/cubit/register_cubit.dart';

class AppRouter {
  Route generateRoute(RouteSettings routeSettings) {
    // this arguments to be passed in any screen like this ( arguents as ClassName )
    final arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case Routes.setupFaceIdScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SetupFaceIdCubit>(),
            child: const SetupFaceIdScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${routeSettings.name}',
              ),
            ),
          ),
        );
    }
  }
}
