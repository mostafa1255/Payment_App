import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/text_Style.dart';

class customsendOperations extends StatelessWidget {
  const customsendOperations({
    super.key,
    required this.device,
    required this.txt1,
    required this.Icon,
  });

  final Size device;
  final String txt1;
  final String Icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        child: Row(
          children: [
            SizedBox(
              width: device.width * 0.02,
            ),
            Image.asset(Icon),
            SizedBox(
              width: device.width * 0.05,
            ),
            Text(
              txt1,
              style: textstyle.textstyle14.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
