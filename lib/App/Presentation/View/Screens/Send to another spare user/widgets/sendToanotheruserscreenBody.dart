import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../Widgets/customSearchTextField.dart';
import 'recentRecipientsListview.dart';
import 'usersTosendListview.dart';

class sendToanotheruserscreenBody extends StatelessWidget {
  sendToanotheruserscreenBody({super.key});
  List<String> images = [
    Aseets.Email,
    Aseets.Lock,
    Aseets.OTP,
    Aseets.Phone,
    Aseets.Email,
    Aseets.Lock,
    Aseets.OTP,
    Aseets.Phone
  ];
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(
          top: device.height * 0.05,
          left: device.width * 0.05,
          right: device.width * 0.03),
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
                width: device.width * 0.3,
              ),
              const Text(
                "Send",
                style: textstyle.textstyle16,
              )
            ],
          ),
          SizedBox(
            height: device.height * 0.03,
          ),
          Text(
            "Recent Recipients",
            style: textstyle.textstyle14.copyWith(color: Colors.black),
          ),
          recentRecipientsListview(device: device, images: images),
          SizedBox(
            height: device.height * 0.02,
          ),
          customSearchTextField(device: device,txt: "Search"),
          SizedBox(
            height: device.height * 0.02,
          ),
          usersTosendListview(device: device, images: images),
          SizedBox(
            width: device.width,
            height: device.height * 0.13,
            child: Center(
                child: customMainButton(
              addicon: true,
              device: device,
              txt: "New Recepient",
              onPressed: () {},
            )),
          ),
        ],
      ),
    );
  }
}
