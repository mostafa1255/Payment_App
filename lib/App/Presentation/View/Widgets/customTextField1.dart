import 'package:flutter/material.dart';

class customTextField1 extends StatelessWidget {
  const customTextField1({
    super.key,
    required this.txt,
    required this.icon,
    this.data,
    this.keyboardType,
  });
  final String txt;
  final String icon;
  final TextEditingController? data;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: data,
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
