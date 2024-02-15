// ignore_for_file: unused_local_variable
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/features/login/ui/login_screen.dart';
import 'package:edugate_applocation/features/register/ui/register_screen.dart';
import 'package:edugate_applocation/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

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
          builder: (_) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
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
