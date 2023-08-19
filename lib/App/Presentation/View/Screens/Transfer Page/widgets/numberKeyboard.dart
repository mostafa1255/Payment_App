import 'package:flutter/material.dart';
import 'package:numpad_layout/widgets/numpad.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';

import 'customContainerwithApplogo.dart';

class numberKeyboard extends StatefulWidget {
  const numberKeyboard({
    super.key,
  });

  @override
  State<numberKeyboard> createState() => _numberKeyboardState();
}

class _numberKeyboardState extends State<numberKeyboard> {
  String number = "";
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: device.height * 0.04,
        ),
        Text(
          '\$$number',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: device.height * 0.01,
        ),
        SizedBox(
          height: device.height * 0.05,
        ),
        NumPad(
            arabicDigits: false,
            onType: (value) {
              number += value;
              setState(() {});
            },
            rightWidget: IconButton(
              icon: const Icon(Icons.backspace),
              onPressed: () {
                if (number.isNotEmpty) {
                  number = number.substring(0, number.length - 1);
                  setState(() {});
                }
              },
            )),
      ],
    );
  }
}
