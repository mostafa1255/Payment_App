import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class customiconwithtext extends StatelessWidget {
  const customiconwithtext({
    super.key,
    required this.device,
    required this.txt,
    required this.iconData,
  });

  final Size device;
  final String txt;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Icon(
            iconData,
            color: const Color(colors.kPrimaryColor),
          ),
          SizedBox(
            width: device.width * 0.01,
          ),
          Text(
            txt,
            style: textstyle.textstyle14
                .copyWith(color: const Color(colors.kPrimaryColor)),
          ),
        ],
      ),
    );
  }
}
