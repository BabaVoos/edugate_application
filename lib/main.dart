import 'package:edugate_applocation/core/di/dependency_injection.dart';

import 'core/routing/app_router.dart';
import 'edugate_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(
    EduGateApp(
      appRouter: AppRouter(),
    ),
  );
}
