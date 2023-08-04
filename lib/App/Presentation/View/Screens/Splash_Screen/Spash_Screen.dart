import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Screens/Splash_Screen/Splash_Screen2.dart';
import 'package:payment_app/App/Styles/colors.dart';
import '../../../../Styles/Assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset(
          Aseets.appLogo,
        ),
        nextScreen: const SplashScreen2(),
        splashTransition: SplashTransition.scaleTransition,
        curve: Curves.bounceOut,
        backgroundColor: const Color(colors.kPrimaryColor),
      ),
    );
  }
}
