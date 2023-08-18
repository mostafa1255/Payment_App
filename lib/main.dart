// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Bills%20&%20Services/Bills_Services.dart';
import 'package:payment_app/App/Presentation/View/Screens/Messages/Message_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Transfer%20succesful/Transfer_succesful.dart';
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
        debugShowCheckedModeBanner: false, home: messageScreen());
  }
}
