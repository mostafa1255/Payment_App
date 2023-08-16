import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class customContainerwithApplogo extends StatelessWidget {
  const customContainerwithApplogo({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: device.width,
      height: device.height * 0.08,
      child: Row(
        children: [
          Container(
            width: device.width * 0.17,
            height: device.height * 0.3,
            decoration: BoxDecoration(
                color: const Color(colors.kPrimaryColor),
                borderRadius: BorderRadius.circular(22)),
            child: Center(
              child: SizedBox(
                width: device.width * 0.07,
                height: device.height * 0.1,
                child: Image.asset(
                  Aseets.appLogo,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: device.height * 0.015,
                horizontal: device.width * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Spare Balance",
                  style: textstyle.textstyle16
                      .copyWith(color: const Color(colors.kPrimaryColor)),
                ),
                const Text(
                  "\$ 5,760.19",
                  style: textstyle.textstyle14,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: device.width * 0.18,
            height: device.height * 0.04,
            decoration: BoxDecoration(
                color: const Color(colors.kPrimaryColor),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
                child: Text(
              "•• 4552",
              style: textstyle.textstyle10.copyWith(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
