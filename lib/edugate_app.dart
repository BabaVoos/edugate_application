import 'package:edugate_applocation/core/routing/app_router.dart';
import 'package:edugate_applocation/core/routing/router.dart';
import 'package:edugate_applocation/core/theming/colors.dart';
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
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        title: 'EduGate App',
        theme: ThemeData(
          primaryColor: ColorsManager.blueColor,
          scaffoldBackgroundColor: ColorsManager.whiteColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.welcomeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
