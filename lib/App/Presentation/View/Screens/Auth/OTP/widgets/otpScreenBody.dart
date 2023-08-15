import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/OTP/widgets/MyTimerWidget.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../../../../Styles/Assets.dart';
import 'package:payment_app/App/data/Cubits/Auth_Cubit/auth_cubit.dart';
import '../../../../Widgets/customBackIcon.dart';

class otpScreenBody extends StatefulWidget {
  otpScreenBody(
      {super.key, required this.verificationId, required this.Phonenum});
  final String verificationId;
  final String Phonenum;

  @override
  State<otpScreenBody> createState() => _otpScreenBodyState();
}

class _otpScreenBodyState extends State<otpScreenBody> {
  String codewritten = '';
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthPhoneSucsess) {
            Get.snackbar("Phone", "Auth sucsess");
          } else if (state is AuthPhoneFaliure) {
            Get.snackbar("Phone", state.errmessage);
          } else if (state is LoadingState) {
            const CircularProgressIndicator();
          }
        },
        builder: (context, state) {
          var cubit = BlocProvider.of<AuthCubit>(context);

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: device.width * 0.03),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: device.height * 0.05,
                  ),
                  customBackIcon(
                      device: device,
                      iconData: Icons.arrow_back_ios,
                      color: Color(colors.kPrimaryColor)),
                  Center(child: Image.asset(Aseets.OTP)),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const Text(
                          "OTP Verification",
                          style: textstyle.textstyle24,
                        ),
                        SizedBox(
                          height: device.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Enter the OTP sent to ",
                              style: textstyle.textstyle14,
                            ),
                            Text(
                              widget.Phonenum,
                              style: textstyle.textstyle14.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: device.height * 0.04,
                  ),
                  OtpTextField(
                    numberOfFields: 6,
                    borderColor: Color(colors.kPrimaryColor),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: false,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {},
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      codewritten = verificationCode;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  SizedBox(
                    height: device.height * 0.04,
                  ),
                  MyTimerWidget(),
                  SizedBox(
                    height: device.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't recieve an OTP?",
                        style: textstyle.textstyle14,
                      ),
                      SizedBox(
                        width: device.width * 0.02,
                      ),
                      Text(
                        "Resend OTP",
                        style:
                            textstyle.textstyle14.copyWith(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: device.height * 0.17,
                  ),
                  customMainButton(
                    device: device,
                    txt: "Verify & Proceed",
                    onPressed: () {
                      cubit.sentCode(
                          smsCode: codewritten,
                          verificationId: widget.verificationId);
                      if (auth.currentUser != null) {
                        Get.snackbar(
                          "sucsess",
                          "sucsess",
                        );
                      } else {
                        Get.snackbar("Faliure", "Faliure");
                      }
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
