import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';
// ignore: camel_case_types
class customhomebuttons extends StatelessWidget {
  const customhomebuttons({
    super.key,
    required this.device,
    required this.iconData,
    required this.txt,
    this.onPressed,
  });

  final Size device;
  final IconData iconData;
  final String txt;
  final void Function()? onPressed;
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
              Size(device.width * 0.9 / 2, device.height * 0.055)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)))),
      onPressed: onPressed,
      child: Row(children: [
        Icon(
          iconData,
          color: const Color(colors.kPrimaryColor),
        ),
        SizedBox(
          width: device.width * 0.02,
        ),
        Text(
          txt,
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
      ]),
    );
  }
}
