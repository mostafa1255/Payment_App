import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Screens/OnBoarding%20Screens/dotcontrollerHome.dart';
import '../../../../Styles/Assets.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset(
          Aseets.Spare,
        ),
        nextScreen: dotcontrollerHome(),
        splashTransition: SplashTransition.scaleTransition,
        curve: Curves.bounceOut,
        backgroundColor: Colors.white,
      ),
    );
  }
}
