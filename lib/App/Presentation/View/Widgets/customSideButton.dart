import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';

class customSideButton extends StatelessWidget {
  const customSideButton({
    super.key,
    required this.device,
    required this.txt,
  });

  final Size device;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            side: const MaterialStatePropertyAll(BorderSide(
                color: Color(
                  colors.kPrimaryColor,
                ),
                width: 1)),
            backgroundColor: const MaterialStatePropertyAll(Colors.white),
            minimumSize: MaterialStatePropertyAll(
                Size(device.width, device.height * 0.065)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23)))),
        onPressed: () {},
        child: Text(
          txt,
          style: TextStyle(
              fontSize: device.width * 0.045,
              color: const Color(colors.kPrimaryColor)),
        ));
  }
}
