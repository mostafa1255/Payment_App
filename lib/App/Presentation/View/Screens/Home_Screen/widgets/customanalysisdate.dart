import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class customanalysisdate extends StatelessWidget {
  const customanalysisdate({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: device.width * 0.23,
        height: device.height * 0.055,
        decoration: BoxDecoration(
            color: Color(0xffE4ECFF), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Week",
              style: textstyle.textstyle10
                  .copyWith(color: const Color(colors.kPrimaryColor)),
            ),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(colors.kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
