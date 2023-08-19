import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

import '../../../Widgets/customBackIcon.dart';
import '../../../Widgets/customMainButton.dart';
import '../../Transfer Page/widgets/customContainerwithApplogo.dart';
import '../../Transfer Page/widgets/numberKeyboard.dart';

class AddmoneywithcardScreenBody extends StatelessWidget {
  const AddmoneywithcardScreenBody({super.key});

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
                  width: device.width * 0.07,
                ),
                const Text(
                  "Add money with card",
                  style: textstyle.textstyle16,
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(right: device.width * 0.3),
              child: const Text(
                "How much would you like to add from your card?",
                style: textstyle.textstyle16,
              ),
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            Row(
              children: [
                SizedBox(
                    width: device.width * 0.15,
                    height: device.height * 0.07,
                    child: Image.asset(
                      Aseets.visa,
                      fit: BoxFit.cover,
                    )),
                const Spacer(),
                const Text(
                  "xxxx-xxxx-xxxx-0251",
                  style: textstyle.textstyle16,
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.015,
            ),
            Divider(),
            SizedBox(
              height: device.height * 0.015,
            ),
            customContainerwithApplogo(device: device),
            const numberKeyboard(),
            SizedBox(
              height: device.height * 0.02,
            ),
            customMainButton(
              device: device,
              txt: "Add money",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
