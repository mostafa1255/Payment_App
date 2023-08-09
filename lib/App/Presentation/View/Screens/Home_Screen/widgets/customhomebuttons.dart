import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';

class customhomebuttons extends StatelessWidget {
  const customhomebuttons({
    super.key,
    required this.device,
    required this.iconData,
    required this.txt,
  });

  final Size device;
  final IconData iconData;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          side: const MaterialStatePropertyAll(BorderSide(
              color: Color(
                colors.kPrimaryColor,
              ),
              width: 2.5)),
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          minimumSize: MaterialStatePropertyAll(
              Size(device.width * 0.9 / 3, device.height * 0.055)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)))),
      onPressed: () {},
      child: Row(children: [
        Icon(
          iconData,
          color: Color(colors.kPrimaryColor),
        ),
        SizedBox(
          width: device.width * 0.02,
        ),
        Text(
          txt,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ]),
    );
  }
}
