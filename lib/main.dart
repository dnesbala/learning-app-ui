import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui1/config/app_routes.dart';
import 'package:ui1/pages/onboarding_page.dart';
import 'package:ui1/pages/splash_page.dart';

import 'config/app_colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      initialRoute: "/",
      routes: {
        AppRoutes.initial: (context) => SplashPage(),
        AppRoutes.onboarding: (context) => OnboardingPage(),
      },
    );
  }
}
