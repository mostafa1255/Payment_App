import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../Widgets/customBackIcon.dart';
import '../../../Widgets/customMainButton.dart';
import '../../Bills & Services/widgets/customBillServiceRows.dart';

class addmoneyScreenBody extends StatelessWidget {
  const addmoneyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.only(
          top: device.height * 0.05,
          left: device.width * 0.05,
          right: device.width * 0.03),
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
                "Add Money",
                style: textstyle.textstyle16,
              ),
            ],
          ),
          SizedBox(
            height: device.height * 0.07,
          ),
          Padding(
            padding: EdgeInsets.only(right: device.width * 0.4),
            child: const Text(
              "How would you like to add money?",
              style: textstyle.textstyle16,
            ),
          ),
          SizedBox(
            height: device.height * 0.08,
          ),
          customBillServiceRows(
            device: device,
            iconData1: Icons.wallet,
            txt: "Debit or credit card",
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          Divider(
            indent: device.width * 0.01,
            endIndent: device.width * 0.01,
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          customBillServiceRows(
            device: device,
            iconData1: FontAwesomeIcons.bank,
            txt: "Bank transfer",
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          Divider(
            indent: device.width * 0.01,
            endIndent: device.width * 0.01,
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
        ],
      ),
    );
  }
}
