import 'package:flutter/material.dart';
import 'package:payment_app/App/Styles/colors.dart';

class customMainButton extends StatelessWidget {
  const customMainButton({
    super.key,
    required this.device,
    required this.txt,
    this.onPressed,
    this.addicon = false,
  });

  final Size device;
  final String txt;
  final void Function()? onPressed;
  final bool addicon;
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
        child: addicon == false
            ? Text(
                txt,
                style: TextStyle(fontSize: device.width * 0.045),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add),
                  SizedBox(
                    width: device.width * 0.022,
                  ),
                  Text(
                    txt,
                    style: TextStyle(fontSize: device.width * 0.045),
                  )
                ],
              ));
  }
}
