import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customSearchTextField.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'customBillServiceRows.dart';

class BillsServicesScreenBody extends StatelessWidget {
  const BillsServicesScreenBody({super.key});

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
                  "Bills & Services",
                  style: textstyle.textstyle16,
                )
              ],
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            customSearchTextField(
              device: device,
              txt: "Search bills & services",
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            customBillServiceRows(
              device: device,
              iconData1: Icons.wifi,
              txt: "Internet Services",
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
              iconData1: Icons.tv,
              txt: "Cable Tv",
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
              iconData1: Icons.phone_android_outlined,
              txt: "Mobile Recharge",
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
              iconData1: Icons.electric_bolt_rounded,
              txt: "Electricity",
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
              iconData1: FontAwesomeIcons.graduationCap,
              txt: "Education",
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
              iconData1: FontAwesomeIcons.planeUp,
              txt: "Travel & Tours",
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
              iconData1: Icons.medical_services,
              txt: "Medical & Dental",
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
              iconData1: FontAwesomeIcons.cartPlus,
              txt: "eCommerce",
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
              iconData1: FontAwesomeIcons.umbrella,
              txt: "Insurance",
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            Divider(
              indent: device.width * 0.01,
              endIndent: device.width * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
