import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/OTP/otp_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/OTP/phonenumber.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Register_Screen/Register_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Send%20to%20another%20spare%20user/send_to_other_user.dart';
import 'package:payment_app/App/Presentation/View/Screens/Transfer%20Page/Transfer_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Wallet_Screen/wallet_Screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: TransferScreen());
  }
}
