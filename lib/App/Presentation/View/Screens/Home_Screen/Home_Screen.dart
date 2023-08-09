import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Login_Screen/Login_Screen.dart';
import 'package:payment_app/App/Styles/colors.dart';

import 'widgets/homeScreenBody.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeScreenBody(),
    );
  }
}
