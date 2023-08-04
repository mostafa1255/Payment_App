import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';

class customMainButton extends StatelessWidget {
  const customMainButton({
    super.key,
    required this.device,
    required this.txt,
    this.onPressed,
  });

  final Size device;
  final String txt;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll(Color(colors.kPrimaryColor)),
            minimumSize: MaterialStatePropertyAll(
                Size(device.width, device.height * 0.065)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23)))),
        onPressed: onPressed,
        child: Text(
          txt,
          style: TextStyle(fontSize: device.width * 0.045),
        ));
  }
}
