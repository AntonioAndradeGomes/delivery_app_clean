import 'package:delivery_app_clean_architecture/app/presentation/splash/splash_screen.dart';
import 'package:delivery_app_clean_architecture/app/presentation/theme.dart';

import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: darkTheme,
    );
  }
}
