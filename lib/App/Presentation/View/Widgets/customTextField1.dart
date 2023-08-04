import 'package:flutter/material.dart';

class customTextField1 extends StatelessWidget {
  const customTextField1({
    super.key,
    required this.txt,
    required this.icon,
  });
  final String txt;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.45))),
          prefixIcon: Image.asset(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: txt),
    );
  }
}
