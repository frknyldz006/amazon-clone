import 'package:flutter/material.dart';
import 'package:myapp/constants/theme.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Ticaret Uygulaması',
      debugShowCheckedModeBanner: false,
      theme: amazonTheme,
      home: const SplashScreen(),
    );
  }
}
