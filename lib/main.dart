import 'package:flutter/material.dart';
import 'package:alumni_connect/core/theme/app_theme.dart';
import 'package:alumni_connect/core/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FptAlumniConnectApp());
}

class FptAlumniConnectApp extends StatelessWidget {
  const FptAlumniConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FPT Alumni Connect',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
    );
  }
}
