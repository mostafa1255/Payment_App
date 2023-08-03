import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../Styles/Assets.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 150000,
        splash: Image.asset(
          Aseets.Spare,
        ),
        nextScreen: Text("Mostafa"),
        splashTransition: SplashTransition.scaleTransition,
        curve: Curves.bounceOut,
        backgroundColor: Colors.white,
      ),
    );
  }
}
