import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Screens/OnBoarding%20Screens/onBoarding_Screen1.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'onBoarding_Screen2.dart';
import 'onBoarding_Screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class dotcontrollerHome extends StatelessWidget {
  dotcontrollerHome({super.key});
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: device.height * 0.95,
            child: PageView(
              controller: controller,
              children: [
                onBoardingScreen1(controller: controller),
                onBoardingScreen2(controller: controller),
                onBoardingScreen3(controller: controller)
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: Color(colors.kPrimaryColor),
                dotColor: Colors.grey,
                dotWidth: 15),
          ),
        ],
      ),
    );
  }
}
