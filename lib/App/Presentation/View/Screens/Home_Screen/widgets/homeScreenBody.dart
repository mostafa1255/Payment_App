import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Add%20money/Add_money.dart';
import 'package:payment_app/App/Presentation/View/Screens/Home_Screen/widgets/customhomebuttons.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'Bar_Chart.dart';
import 'customanalysisdate.dart';
import 'customresievemoneycontainer.dart';
import 'customsendmoneycontainer.dart';

class homeScreenBody extends StatelessWidget {
  const homeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: device.width * 0.03, vertical: device.height * 0.05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_circle,
                  size: device.width * 0.14,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: device.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: textstyle.textstyle14
                          .copyWith(fontFamily: "", color: Colors.black),
                    ),
                    const Text(
                      "Ugo",
                      style: textstyle.textstyle16,
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: Image.asset(Aseets.notifecation))
              ],
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: device.width * 0.04),
              width: device.width,
              height: device.height * 0.2,
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage(Aseets.mask)),
                  color: const Color(colors.kPrimaryColor),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("spare balance", style: textstyle.textstyle10),
                  Row(
                    children: [
                      Text("\$ 5,760.19",
                          style: textstyle.textstyle24
                              .copyWith(color: Colors.white)),
                      IconButton(
                          onPressed: () {}, icon: Image.asset(Aseets.hide))
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        width: device.width * 0.18,
                        height: device.height * 0.04,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "•• 4552",
                          style: textstyle.textstyle10.copyWith(
                              color: const Color(colors.kPrimaryColor)),
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customhomebuttons(
                  onPressed: () {
                    Get.to(addmoneyScreen());
                  },
                  device: device,
                  iconData: Icons.add,
                  txt: "Add money",
                ),
                customhomebuttons(
                  device: device,
                  iconData: Icons.arrow_downward_outlined,
                  txt: "Withdraw",
                ),
                customhomebuttons(
                  device: device,
                  iconData: Icons.menu,
                  txt: "More...",
                )
              ],
            ),
            SizedBox(
              height: device.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Analysis",
                  style: textstyle.textstyle20,
                ),
                customanalysisdate(device: device)
              ],
            ),
            const BarChartSample3(),
            SizedBox(
              height: device.height * 0.03,
            ),
            const Text(
              "May, 2022",
              style: textstyle.textstyle20,
            ),
            SizedBox(
              height: device.height * 0.02,
            ),
            customsendmoneycontainer(device: device),
            SizedBox(
              height: device.height * 0.02,
            ),
            customresievemoneycontainer(device: device)
          ],
        ),
      ),
    );
  }
}
