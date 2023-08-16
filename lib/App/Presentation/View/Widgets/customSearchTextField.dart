import 'package:flutter/material.dart';

class customSearchTextField extends StatelessWidget {
  const customSearchTextField({
    super.key,
    required this.device,
  });

  final Size device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: device.height * 0.055,
      child: TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.45))),
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            labelText: "Search"),
      ),
    );
  }
}
