import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../../../../Styles/Assets.dart';
import '../../../../Widgets/customBackIcon.dart';

class otpScreenBody extends StatelessWidget {
  const otpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: device.width * 0.03),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: device.height * 0.05,
            ),
            customBackIcon(device: device),
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
                        "+20 01289880177",
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
              numberOfFields: 5,
              borderColor: Color(colors.kPrimaryColor),
              //set to true to show as box or false to show as dash
              showFieldAsBox: false,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            SizedBox(
              height: device.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn’t recieve an OTP?",
                  style: textstyle.textstyle14,
                ),
                SizedBox(
                  width: device.width * 0.02,
                ),
                Text(
                  "Resend OTP",
                  style: textstyle.textstyle14.copyWith(color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.17,
            ),
            customMainButton(
              device: device,
              txt: "Verify & Proceed",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
