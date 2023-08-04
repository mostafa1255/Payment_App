import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../../Widgets/customCheckBox.dart';
import '../../../../Widgets/customSideButton.dart';
import '../../../../Widgets/customTextField1.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: device.width * 0.04, vertical: device.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  children: [
                    SizedBox(
                      width: device.width * 0.01,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(colors.kPrimaryColor),
                        )),
                  ],
                ),
              ),
              Icon(
                Icons.account_circle,
                size: device.width * 0.14,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          Text(
            "Welcome back,",
            style: TextStyle(fontSize: device.width * 0.065),
          ),
          Text(
            "Ugo",
            style: TextStyle(
              fontSize: device.width * 0.07,
              fontFamily: "Inter",
            ),
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          Text(
            "Hope you are doing great?",
            style:
                TextStyle(fontSize: device.width * 0.035, color: Colors.grey),
          ),
          SizedBox(
            height: device.height * 0.09,
          ),
          const customTextField1(icon: Aseets.account, txt: "First name"),
          SizedBox(
            height: device.height * 0.02,
          ),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Image.asset(Aseets.eyesplash)),
                prefixIcon: Image.asset(Aseets.Lock),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                labelText: "Enter Your Password"),
          ),
          Row(
            children: [
              const customCheckBox(),
              const Text(
                "Remember me",
                style: textstyle.textstyle14,
              ),
              SizedBox(
                width: device.width * 0.2,
              ),
              Text(
                "Forget your password?",
                style: textstyle.textstyle14
                    .copyWith(color: const Color(colors.kPrimaryColor)),
              )
            ],
          ),
          SizedBox(
            height: device.height * 0.05,
          ),
          customMainButton(
            device: device,
            txt: "Sign In",
            onPressed: () {},
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          customSideButton(
            device: device,
            txt: 'Sign Up',
          )
        ],
      ),
    ));
  }
}
