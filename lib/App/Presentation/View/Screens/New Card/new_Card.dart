import 'package:flutter/material.dart';

import 'widgets/newCardScreenBody.dart';

class newCardScreen extends StatelessWidget {
  const newCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body:  newCardScreenBody());
  }
}
