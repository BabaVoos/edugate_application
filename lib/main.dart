import 'package:edugate_applocation/core/di/dependency_injection.dart';
import 'package:edugate_applocation/core/networking/cache_helper.dart';

import 'core/routing/app_router.dart';
import 'edugate_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await CacheHelper.init();
  runApp(
    EduGateApp(
      appRouter: AppRouter(),
    ),
  );
}
