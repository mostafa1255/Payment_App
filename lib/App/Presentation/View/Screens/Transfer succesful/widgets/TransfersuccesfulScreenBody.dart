import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customSideButton.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

import 'customiconwithtext.dart';

class TransfersuccesfulScreenBody extends StatelessWidget {
  const TransfersuccesfulScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return Center(
        child: Stack(
      children: [
        Container(
          width: device.width * 0.8,
          height: device.height * 0.6,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Column(
            children: [
              SizedBox(
                height: device.height * 0.03,
              ),
              Text(
                "You successfully sent \$170 to",
                style: textstyle.textstyle14.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: device.height * 0.03,
              ),
              const CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage(Aseets.appLogo),
              ),
              SizedBox(
                height: device.height * 0.015,
              ),
              Text(
                "Victory Am",
                style: textstyle.textstyle14.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: device.height * 0.03,
              ),
              Divider(
                color: Colors.black,
                thickness: 0.5,
                indent: device.width * 0.07,
                endIndent: device.width * 0.07,
              ),
              SizedBox(
                height: device.height * 0.03,
              ),
              Text(
                "Enjoy yourself at the movies darling",
                style: textstyle.textstyle14.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: device.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: device.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customiconwithtext(
                      device: device,
                      txt: "Download Receipt",
                      iconData: Icons.download_for_offline_outlined,
                    ),
                    customiconwithtext(
                      device: device,
                      txt: "Share",
                      iconData: Icons.share_outlined,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: device.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: device.width * 0.15),
                child: customMainButton(
                  device: device,
                  txt: "Done",
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: device.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: device.width * 0.15),
                child: customSideButton(
                  device: device,
                  txt: "Send More",
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: device.height * 0.12,
            left: -device.height * 0.024,
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
            )),
        Positioned(
            top: device.height * 0.12,
            right: -device.height * 0.024,
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
            )),
      ],
    ));
  }
}
