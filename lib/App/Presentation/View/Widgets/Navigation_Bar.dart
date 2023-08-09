import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Register_Screen/Register_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Home_Screen/Home_Screen.dart';
import 'package:payment_app/App/Styles/colors.dart';
import '../Screens/Auth/Login_Screen/Login_Screen.dart';

class bottomnavigationBar extends StatefulWidget {
  const bottomnavigationBar({super.key});

  @override
  State<bottomnavigationBar> createState() => _bottomnavigationBarState();
}

List screens = [LoginScreen(), RegisterScreen(), homeScreen()];
int _slectedIndex = 0;

class _bottomnavigationBarState extends State<bottomnavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _slectedIndex,
          backgroundColor: const Color(colors.kPrimaryColor),
          items: const [
            Icon(Icons.login, size: 20),
            Icon(Icons.app_registration_rounded, size: 20),
            Icon(Icons.home, size: 20),
          ],
          onTap: (index) {
            _slectedIndex = index;
            setState(() {});
          },
        ),
        body: screens[_slectedIndex]);
  }
}
