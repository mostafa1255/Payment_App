import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/OTP/otp_Screen.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customTextField1.dart';
import 'package:payment_app/App/Styles/Assets.dart';

import 'package:payment_app/App/data/Cubits/Auth_Cubit/auth_cubit.dart';

class Phonenumber extends StatefulWidget {
  Phonenumber({super.key});

  @override
  State<Phonenumber> createState() => _PhonenumberState();
}

class _PhonenumberState extends State<Phonenumber> {
  TextEditingController phone = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: device.height * 0.5,
                  ),
                  customTextField1(
                    data: phone,
                    icon: Aseets.Phone,
                    txt: "Phone num",
                  ),
                  customMainButton(
                    device: device,
                    txt: "Navigate to otp",
                    onPressed: () async {
                      await auth.verifyPhoneNumber(
                        timeout: Duration(seconds: 30),
                        phoneNumber: '+2${phone.text.trim()}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent:
                            (String verificationId, int? resendToken) async {
                          Get.to(otpScreen(
                            verificationId: verificationId,
                            Phonenum: phone.text,
                          ));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
