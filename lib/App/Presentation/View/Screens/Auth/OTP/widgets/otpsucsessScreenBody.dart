import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

// ignore: camel_case_types
class otpsucsessScreenBody extends StatelessWidget {
  const otpsucsessScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: device.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: device.height * 0.15,
                ),
                CircleAvatar(
                  maxRadius: device.width * 0.2,
                  backgroundColor: const Color(colors.kPrimaryColor),
                  child: Icon(
                    FontAwesomeIcons.check,
                    size: device.width * 0.25,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: device.height * 0.1,
                ),
                Text(
                  "Congratulations",
                  style: textstyle.textstyle24
                      .copyWith(color: const Color(colors.kPrimaryColor)),
                ),
                SizedBox(
                  height: device.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: device.width * 0.2),
                  child: const Text(
                    "You have successfully created your spare account",
                    style: textstyle.textstyle14,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            SizedBox(
              height: device.height * 0.3,
            ),
            customMainButton(
              device: device,
              txt: "Start",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
