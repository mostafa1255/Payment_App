import 'package:flutter/material.dart';


import 'Widgets/walletScreenBody.dart';

// ignore: camel_case_types
class walletScreen extends StatelessWidget {
  const walletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: const walletScreenBody());
  }
}
