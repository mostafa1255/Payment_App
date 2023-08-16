import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'numberKeyboard.dart';

class TransferScreenBody extends StatelessWidget {
  const TransferScreenBody({super.key});

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
                  width: device.width * 0.28,
                ),
                const Text(
                  "Transfer",
                  style: textstyle.textstyle16,
                )
              ],
            ),
            Stack(
              children: [
                SizedBox(
                  width: device.width * 0.18,
                  height: device.height * 0.11,
                  child: const CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(Aseets.appLogo),
                  ),
                ),
                Positioned(
                  left: device.width * 0.012,
                  top: device.height * 0.07,
                  child: Container(
                    width: device.width * 0.15,
                    height: device.height * 0.035,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xff87898E)),
                    child: const Center(
                      child: Text(
                        "•• 6917",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: device.height * 0.007,
            ),
            const Text(
              "Victory",
              style: textstyle.textstyle20,
            ),
            const numberKeyboard()
          ],
        ),
      ),
    );
  }
}
