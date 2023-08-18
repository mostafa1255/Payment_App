import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class customBillServiceRows extends StatelessWidget {
  const customBillServiceRows({
    super.key,
    required this.device,
    required this.txt,
    required this.iconData1,
  });

  final Size device;
  final String txt;
  final IconData iconData1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData1,
          color: Color(colors.kPrimaryColor),
        ),
        SizedBox(
          width: device.width * 0.03,
        ),
        Text(
          txt,
          style: textstyle.textstyle14.copyWith(color: Colors.black),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          size: device.width * 0.04,
        )
      ],
    );
  }
}
