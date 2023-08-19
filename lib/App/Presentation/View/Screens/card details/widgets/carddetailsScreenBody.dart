import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../Widgets/customBackIcon.dart';
import '../../../Widgets/customCheckBox.dart';

class carddetailsScreenBody extends StatelessWidget {
  const carddetailsScreenBody({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                customBackIcon(
                    device: device,
                    iconData: Icons.arrow_back_ios,
                    color: const Color(colors.kPrimaryColor)),
                SizedBox(
                  width: device.width * 0.08,
                ),
                const Text(
                  "Add new card",
                  style: textstyle.textstyle16,
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.035,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: device.width * 0.8,
                    height: device.height * 0.25,
                    decoration: BoxDecoration(
                        color: const Color(colors.kPrimaryColor),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                      top: device.height * 0.027,
                      left: device.width * 0.6,
                      child: Container(
                        width: device.width * 0.15,
                        height: device.height * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  Positioned(
                      top: device.height * 0.12,
                      left: device.width * 0.05,
                      child: Container(
                        width: device.width * 0.3,
                        height: device.height * 0.027,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      )),
                  Positioned(
                      top: device.height * 0.18,
                      left: device.width * 0.05,
                      child: Container(
                        width: device.width * 0.45,
                        height: device.height * 0.027,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: device.height * 0.035,
            ),
            const Text(
              "Card number",
              style: textstyle.textstyle14,
            ),
            SizedBox(
              height: device.height * 0.015,
            ),
            Row(
              children: [
                const Text(
                  "4892-2974-9352-0251",
                  style: textstyle.textstyle16,
                ),
                const Spacer(),
                Image.asset(Aseets.visa)
              ],
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            Divider(
                thickness: 0.3,
                color: Colors.grey,
                endIndent: device.width * 0.02,
                indent: device.width * 0.01),
            SizedBox(
              height: device.height * 0.01,
            ),
            const Text(
              "Card holder name",
              style: textstyle.textstyle14,
            ),
            SizedBox(
              height: device.height * 0.015,
            ),
            const Text(
              "Osuagwu-Chidiadi Ugo",
              style: textstyle.textstyle16,
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            Divider(
                thickness: 0.3,
                color: Colors.grey,
                endIndent: device.width * 0.02,
                indent: device.width * 0.01),
            SizedBox(
              height: device.height * 0.02,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Expiry date",
                      style: textstyle.textstyle14,
                    ),
                    SizedBox(
                      height: device.height * 0.015,
                    ),
                    const Text(
                      "06/24",
                      style: textstyle.textstyle16,
                    ),
                    SizedBox(
                      height: device.height * 0.02,
                    ),
                    Divider(
                        thickness: 0.5,
                        color: Colors.black,
                        endIndent: device.width * 0.05,
                        indent: device.width * 0.01),
                  ],
                ),
                SizedBox(
                  width: device.width * 0.3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CVC/CVV",
                      style: textstyle.textstyle14,
                    ),
                    SizedBox(
                      height: device.height * 0.015,
                    ),
                    const Text(
                      "06/24",
                      style: textstyle.textstyle16,
                    ),
                    SizedBox(
                      height: device.height * 0.02,
                    ),
                    Divider(
                        thickness: 1,
                        color: Colors.black,
                        endIndent: device.width * 0.05,
                        indent: device.width * 0.07),
                  ],
                )
              ],
            ),
            const Row(
              children: [
                customCheckBox(),
                Text(
                  "Save card for future",
                  style: textstyle.textstyle14,
                ),
              ],
            ),
            SizedBox(
              height: device.height * 0.08,
            ),
            customMainButton(
              device: device,
              txt: "Add card",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
