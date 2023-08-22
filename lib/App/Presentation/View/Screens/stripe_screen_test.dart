import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stripetest extends StatelessWidget {
  const Stripetest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stripe Payment")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                ElevatedButton(onPressed: () {}, child: Text("Pay 20 Dollars")),
          )
        ],
      ),
    );
  }
}
