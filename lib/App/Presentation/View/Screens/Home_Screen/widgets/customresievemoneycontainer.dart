import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../Widgets/customBackIcon.dart';

class customresievemoneycontainer extends StatelessWidget {
  const customresievemoneycontainer({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        customBackIcon(
            color: Colors.green,
            device: device,
            iconData: Icons.keyboard_arrow_up_outlined),
        SizedBox(
          width: device.width * 0.02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "deposit into spare",
              style: textstyle.textstyle16,
            ),
            Text(
              "06 May 2022",
              style: textstyle.textstyle14.copyWith(fontSize: 12),
            )
          ],
        ),
        const Spacer(),
        Text(
          "+\$50.60",
          style: TextStyle(
              fontSize: device.width * 0.04,
              color: Colors.green,
              fontFamily: "Inter"),
        )
      ],
    );
  }
}
