import 'package:flutter/material.dart';

import 'widgets/otpScreenBody.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({super.key, required this.verificationId, required this.Phonenum});
  final String verificationId;
  final String Phonenum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: otpScreenBody(Phonenum: Phonenum,
      verificationId: verificationId,
    ));
  }
}
