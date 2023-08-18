import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Screens/Messages/widgets/messageScreenBody.dart';

class messageScreen extends StatelessWidget {
  const messageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: messageScreenBody());
  }
}
