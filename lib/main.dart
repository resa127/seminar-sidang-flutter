import 'package:flutter/material.dart';
import 'app/theme/app_theme.dart';
import 'presentation/views/registration_view.dart';
import 'utils/constants.dart';

void main() {
  runApp(const SeminarSidangApp());
}

class SeminarSidangApp extends StatelessWidget {
  const SeminarSidangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const RegistrationView(),
    );
  }
}