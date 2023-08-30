import 'package:flutter/material.dart';
import 'widgets/homeScreenBody.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: homeScreenBody(),
    );
  }
}
