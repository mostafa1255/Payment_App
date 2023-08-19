import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../../../Styles/Assets.dart';
import '../../../Widgets/customMainButton.dart';

class newCardScreenBody extends StatelessWidget {
  const newCardScreenBody({super.key});

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
            customBackIcon(
                device: device,
                iconData: Icons.arrow_back_ios,
                color: const Color(colors.kPrimaryColor)),
            SizedBox(
              height: device.height * 0.03,
            ),
            Center(child: Image.asset(Aseets.walletimage)),
            const Center(
              child: Text(
                "Link a debit or credit card",
                style: textstyle.textstyle24,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: device.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: device.width * 0.16),
              child: const Text(
                "Send money or pay bills & services with ease.",
                style: textstyle.textstyle14,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: device.height * 0.3,
            ),
            customMainButton(
              addicon: true,
              device: device,
              txt: "Add Card",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
