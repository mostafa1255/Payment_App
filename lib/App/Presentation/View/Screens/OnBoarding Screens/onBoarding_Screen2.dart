import 'package:flutter/material.dart';
import '../../../../Styles/Assets.dart';
import '../../Widgets/customMainButton.dart';

class onBoardingScreen2 extends StatelessWidget {
  const onBoardingScreen2({super.key, required this.controller});
  final PageController controller;
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
                height: device.height * 0.05,
              ),
              Center(child: Image.asset(Aseets.walkthrough)),
              SizedBox(
                height: device.height * 0.04,
              ),
              Text("Spare Is Easy & Secure",
                  style: TextStyle(
                      fontFamily: "Inter", fontSize: device.width * 0.07)),
              SizedBox(
                height: device.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: device.width * 0.2),
                child: Text(
                    textAlign: TextAlign.center,
                    "spare is easy to use and all your transactions are secured",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: device.width * 0.04,
                    )),
              ),
              SizedBox(
                height: device.height * 0.15,
              ),
              customMainButton( onPressed: () {
                  controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                device: device,
                txt: "Get Started",
              )
            ],
          ),
        ),
      ),
    );
  }
}
