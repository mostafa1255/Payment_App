import 'package:flutter/material.dart';
import '../../../../Styles/Assets.dart';
import 'package:getwidget/getwidget.dart';

class onBoardingScreen1 extends StatelessWidget {
  const onBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: device.width * 0.05),
          child: Column(
            children: [
              SizedBox(
                height: device.height * 0.03,
              ),
              Center(child: Image.asset(Aseets.dollars)),
              SizedBox(
                height: device.height * 0.04,
              ),
              Text("Spend & Save With Spare",
                  style: TextStyle(
                      fontFamily: "Inter", fontSize: device.width * 0.07)),
              SizedBox(
                height: device.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: device.width * 0.2),
                child: Text(
                    textAlign: TextAlign.center,
                    "With spare , you can for bills , food entertaiment, utilities and still save",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: device.width * 0.04,
                    )),
              ),
              SizedBox(
                height: device.height * 0.02,
              ),
              GFButton(
                fullWidthButton: true,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
