import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui1/config/app_colors.dart';
import 'package:ui1/config/app_routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushNamed(AppRoutes.onboarding);
      },
    );

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Learning App",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xffFFF3FF),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
