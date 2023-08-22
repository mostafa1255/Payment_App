import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customSideButton.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class moneyaddedsuccessfulScreenBody extends StatelessWidget {
  const moneyaddedsuccessfulScreenBody({super.key});

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
          SizedBox(
            height: device.height * 0.1,
          ),
          Center(child: Image.asset(Aseets.Social)),
          Text(
            "Yaaayyyyy!",
            style: textstyle.textstyle24
                .copyWith(color: const Color(colors.kPrimaryColor)),
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: device.width * 0.12),
            child: const Text(
              "You have successfully added \$826 to your spare account",
              style: textstyle.textstyle14,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: device.height * 0.2,
          ),
          customMainButton(
            device: device,
            txt: "Done",
            onPressed: () {},
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          customSideButton(device: device, txt: "Add More Money")
        ],
      )),
    );
  }
}
