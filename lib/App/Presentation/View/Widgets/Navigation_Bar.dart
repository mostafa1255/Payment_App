import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Register_Screen/Register_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Wallet_Screen/wallet_Screen.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import '../Screens/Auth/Login_Screen/Login_Screen.dart';
import 'customsendOperations.dart';

class bottomnavigationBar extends StatefulWidget {
  const bottomnavigationBar({super.key});

  @override
  State<bottomnavigationBar> createState() => _bottomnavigationBarState();
}

List screens = [
  const LoginScreen(),
  const walletScreen(),
  const walletScreen(),
  const LoginScreen(),
  const RegisterScreen(),
];
int _slectedIndex = 0;

class _bottomnavigationBarState extends State<bottomnavigationBar> {
  final BottomBarWithSheetController _bottomBarController =
      BottomBarWithSheetController(initialIndex: _slectedIndex);
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Scaffold(
        bottomNavigationBar: BottomBarWithSheet(
          sheetChild: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: device.height * 0.02,
                ),
                customsendOperations(
                  device: device,
                  Icon: Aseets.dollar,
                  txt1: "Pay to another spare user",
                ),
                SizedBox(
                  height: device.height * 0.02,
                ),
                const Divider(),
                SizedBox(
                  height: device.height * 0.02,
                ),
                customsendOperations(
                  device: device,
                  Icon: Aseets.requestpayment,
                  txt1: "Pay to another spare user",
                ),
                SizedBox(
                  height: device.height * 0.03,
                ),
                const Divider(),
                SizedBox(
                  height: device.height * 0.02,
                ),
                customsendOperations(
                  device: device,
                  Icon: Aseets.wallet,
                  txt1: "Pay to another spare user",
                )
              ],
            ),
          ),
          mainActionButtonTheme: const MainActionButtonTheme(
              icon: Icon(
                FontAwesomeIcons.paperPlane,
                color: Colors.white,
              ),
              color: Color(colors.kPrimaryColor)),
          controller: _bottomBarController,
          bottomBarTheme: BottomBarTheme(
            heightOpened: device.height * 0.35,
            selectedItemIconColor: const Color(colors.kPrimaryColor),
            decoration: const BoxDecoration(color: Colors.white),
            itemIconColor: Colors.grey,
          ),
          items: const [
            BottomBarWithSheetItem(
              icon: Icons.home_filled,
            ),
            BottomBarWithSheetItem(icon: Icons.wallet),
            BottomBarWithSheetItem(
              icon: FontAwesomeIcons.message,
            ),
            BottomBarWithSheetItem(icon: FontAwesomeIcons.user),
          ],
          onSelectItem: (index) {
            _slectedIndex = index;
            setState(() {});
          },
        ),
        body: screens[_slectedIndex]);
  }
}
