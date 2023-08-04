import 'package:flutter/material.dart';

class customCheckBox extends StatefulWidget {
  const customCheckBox({super.key});

  @override
  State<customCheckBox> createState() => _customCheckBoxState();
}

class _customCheckBoxState extends State<customCheckBox> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      value: _isChecked,
      activeColor: Colors.blue,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}
