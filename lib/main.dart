import 'package:flutter/material.dart';

import 'app/routes/app_router.dart';
import 'app/theme/app_theme.dart';
import 'utils/constants.dart';

void main() {
  runApp(const SeminarSidangApp());
}

class SeminarSidangApp extends StatelessWidget {
  const SeminarSidangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}