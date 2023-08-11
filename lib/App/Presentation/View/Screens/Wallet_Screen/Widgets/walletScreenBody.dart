import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Screens/Home_Screen/widgets/customresievemoneycontainer.dart';
import 'package:payment_app/App/Presentation/View/Screens/Home_Screen/widgets/customsendmoneycontainer.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

import '../../../../../Styles/Assets.dart';
import '../../Home_Screen/widgets/customanalysisdate.dart';

class walletScreenBody extends StatelessWidget {
  const walletScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: device.width * 0.025, vertical: device.height * 0.045),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                customBackIcon(
                  color: const Color(colors.kPrimaryColor),
                  device: device,
                  iconData: Icons.arrow_back_ios,
                ),
                SizedBox(
                  width: device.width * 0.25,
                ),
                const Text(
                  "My Wallet",
                  style: textstyle.textstyle16,
                )
              ],
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            const Center(
              child: Text(
                "Your spare cards",
                style: textstyle.textstyle14,
              ),
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            Container(
              width: device.width * 0.9,
              height: device.height * 0.21,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        Aseets.cardPhoto,
                      ),
                      fit: BoxFit.cover),
                  color: const Color(colors.kPrimaryColor),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transactions",
                  style: textstyle.textstyle20,
                ),
                customanalysisdate(device: device)
              ],
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            const Text(
              "May, 2022",
              style: textstyle.textstyle20,
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            customsendmoneycontainer(device: device),
            SizedBox(
              height: device.height * 0.02,
            ),
            customresievemoneycontainer(device: device),
            SizedBox(
              height: device.height * 0.02,
            ),
            customresievemoneycontainer(device: device),
            SizedBox(
              height: device.height * 0.02,
            ),
            const Text(
              "May, 2022",
              style: textstyle.textstyle20,
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            customsendmoneycontainer(device: device),
            SizedBox(
              height: device.height * 0.02,
            ),
            customsendmoneycontainer(device: device),
            SizedBox(
              height: device.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
