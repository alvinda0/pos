// home/view/screen/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:pos_sibayar/home/view/screen/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo_sibayar.png'),
      ),
    );
  }
}
