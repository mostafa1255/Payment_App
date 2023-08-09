import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Login_Screen/Login_Screen.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customTextField1.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'package:csc_picker/csc_picker.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: device.width * 0.03, vertical: device.height * 0.04),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customBackIcon(device: device,iconData: Icons.arrow_back_ios,color: Color(colors.kPrimaryColor)),
            Center(
                child: Column(
              children: [
                Image.asset(Aseets.appLogo),
                SizedBox(
                  height: device.height * 0.03,
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: device.width * 0.07),
                )
              ],
            )),
            SizedBox(
              height: device.height * 0.03,
            ),
            const customTextField1(txt: "First name", icon: Aseets.account),
            SizedBox(
              height: device.height * 0.03,
            ),
            const customTextField1(txt: "Last name", icon: Aseets.account),
            SizedBox(
              height: device.height * 0.03,
            ),
            const customTextField1(txt: "Phone number", icon: Aseets.Phone),
            SizedBox(
              height: device.height * 0.03,
            ),
            const customTextField1(txt: "Email", icon: Aseets.Email),
            SizedBox(
              height: device.height * 0.03,
            ),
            const customTextField1(txt: "Password", icon: Aseets.Lock),
            SizedBox(
              height: device.height * 0.03,
            ),
            CSCPicker(
              onCountryChanged: (value) {},
              onCityChanged: (value) {},
              onStateChanged: (value) {},
              searchBarRadius: 15,
              dropdownDialogRadius: 15,
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            customMainButton(
              device: device,
              txt: "Sign Up",
              onPressed: () {},
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: textstyle.textstyle14,
                ),
                SizedBox(
                  width: device.width * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const LoginScreen());
                  },
                  child: Text(
                    "Sign in",
                    style: textstyle.textstyle14
                        .copyWith(color: Color(colors.kPrimaryColor)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
