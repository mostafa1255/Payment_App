import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../Widgets/customBackIcon.dart';
import '../../../Widgets/customMainButton.dart';

class messageScreenBody extends StatelessWidget {
  const messageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(
          top: device.height * 0.05,
          left: device.width * 0.05,
          right: device.width * 0.03),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                customBackIcon(
                    device: device,
                    iconData: Icons.arrow_back_ios,
                    color: const Color(colors.kPrimaryColor)),
                SizedBox(
                  width: device.width * 0.22,
                ),
                const Text(
                  "Messages",
                  style: textstyle.textstyle16,
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Image.asset(Aseets.message),
            const Text(
              "No new messages!",
              style: textstyle.textstyle24,
            ),
            SizedBox(
              height: device.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: device.width * 0.16),
              child: const Text(
                "Your inbox is empty.Start sending messages to your fellow spare friends.",
                style: textstyle.textstyle14,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: device.height * 0.2,
            ),
            customMainButton(
              addicon: true,
              device: device,
              txt: "New Recepient",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
