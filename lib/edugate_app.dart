import 'package:edugate_applocation/core/networking/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'core/routing/router.dart';
import 'core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EduGateApp extends StatelessWidget {
  final AppRouter appRouter;
  const EduGateApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'EduGate App',
        theme: ThemeData(
          primaryColor: ColorsManager.blueColor,
          scaffoldBackgroundColor: ColorsManager.whiteColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: CacheHelper.getData(key: 'token') == null || CacheHelper.getData(key: 'token') == ''
            ? Routes.welcomeScreen
            : Routes.edugateLayout,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
