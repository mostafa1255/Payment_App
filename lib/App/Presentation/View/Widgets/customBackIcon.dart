import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';

class customBackIcon extends StatelessWidget {
  const customBackIcon({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: device.width * 0.1,
      height: device.width * 0.1,
      decoration: BoxDecoration(
          color: Colors.blue.shade50.withOpacity(0.6),
          borderRadius: BorderRadius.circular(device.width * 0.14 / 2)),
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(colors.kPrimaryColor),
          )),
    );
  }
}
