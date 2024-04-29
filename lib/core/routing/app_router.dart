// ignore_for_file: unused_local_variable
import 'package:edugate_applocation/core/di/dependency_injection.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/features/check_attendance/ui/check_attendance_screen.dart';
import 'package:edugate_applocation/features/course_attendance/logic/cubit/course_attendance_cubit.dart';
import 'package:edugate_applocation/features/home/data/models/get_courses_repsonse.dart';
import 'package:edugate_applocation/features/home/data/models/qr_code_data_model.dart';
import 'package:edugate_applocation/features/home/logic/cubit/cubit/home_cubit.dart';
import 'package:edugate_applocation/features/home/ui/edugate_layout.dart';
import 'package:edugate_applocation/features/setup_face_id/logic/cubit/setup_face_id_cubit.dart';
import 'package:edugate_applocation/features/setup_face_id/ui/setup_face_id_screen.dart';
import 'package:edugate_applocation/features/login/logic/cubit/login_cubit.dart';
import 'package:edugate_applocation/features/login/ui/login_screen.dart';
import 'package:edugate_applocation/features/register/ui/register_screen.dart';
import 'package:edugate_applocation/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/attendance_history/ui/attendance_history_screen.dart';
import '../../features/course_attendance/ui/course_attendance_screen.dart';
import '../../features/help/ui/help_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/profile/logic/cubit/profile_cubit.dart';
import '../../features/profile/ui/profile_screen.dart';
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
      case Routes.edugateLayout:
        return MaterialPageRoute(
          builder: (_) => const EdugateLayout(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ProfileCubit>(),
            child: const ProfileScreen(),
          ),
        );
      case Routes.helpScreen:
        return MaterialPageRoute(
          builder: (_) => const HelpScreen(),
        );
      case Routes.courseAttendanceScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CourseAttendanceCubit>(),
            child: CourseAttendanceScreen(
              course: arguments as GetCoursesResponse,
            ),
          ),
        );
      case Routes.checkAttendanceScreen:
        return MaterialPageRoute(
          builder: (_) => CheckAttendanceScreen(
            qrResult: arguments as QRCodeDataModel,
          ),
        );
      case Routes.attendanceHistoryScreen:
        return MaterialPageRoute(
          builder: (_) => const AttendanceHistoryScreen(),
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
