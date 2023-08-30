import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Register_Screen/Register_Screen.dart';
import 'package:payment_app/App/Presentation/View/Screens/Home_Screen/Home_Screen.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import '../../../../Widgets/customBackIcon.dart';
import '../../../../Widgets/customCheckBox.dart';
import '../../../../Widgets/customSideButton.dart';
import '../../../../Widgets/customTextField1.dart';
import 'package:payment_app/App/data/Cubits/Auth_Cubit/auth_cubit.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthLoginSucsess) {
            Get.showSnackbar(const GetSnackBar(
              title: "Sucsess",
              message: "Login Sucsessfull",
              duration: Duration(seconds: 3),
              backgroundColor: Colors.green,
              icon: Icon(Icons.check, color: Colors.white),
            ));
            Get.to(() => homeScreen());
          } else if (state is AuthLoginFaliure) {
            print(state.errmessage);
            Get.showSnackbar(GetSnackBar(
              title: "Faliure",
              message: state.errmessage,
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.red,
              icon: const Icon(Icons.check, color: Colors.white),
            ));
          } else if (state is LoadingState) {
            const CircularProgressIndicator();
          }
        },
        builder: (context, state) {
          var cubit = BlocProvider.of<AuthCubit>(context);
          return SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: device.width * 0.04,
                vertical: device.height * 0.02),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customBackIcon(
                          device: device,
                          iconData: Icons.arrow_back_ios,
                          color: const Color(colors.kPrimaryColor)),
                      Icon(
                        Icons.account_circle,
                        size: device.width * 0.14,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: device.height * 0.02,
                  ),
                  Text(
                    "Welcome back,",
                    style: TextStyle(fontSize: device.width * 0.065),
                  ),
                  Text(
                    "Ugo",
                    style: TextStyle(
                      fontSize: device.width * 0.07,
                      fontFamily: "Inter",
                    ),
                  ),
                  SizedBox(
                    height: device.height * 0.02,
                  ),
                  Text(
                    "Hope you are doing great?",
                    style: TextStyle(
                        fontSize: device.width * 0.035, color: Colors.grey),
                  ),
                  SizedBox(
                    height: device.height * 0.09,
                  ),
                  const customTextField1(icon: Aseets.account, txt: "Email"),
                  SizedBox(
                    height: device.height * 0.02,
                  ),
                  customTextField2(),
                  Row(
                    children: [
                      const customCheckBox(),
                      const Text(
                        "Remember me",
                        style: textstyle.textstyle14,
                      ),
                      SizedBox(
                        width: device.width * 0.10,
                      ),
                      GestureDetector(
                        onTap: () {
                          cubit.resetPassword(email: emailController.text);
                        },
                        child: Text(
                          "Forget your password?",
                          style: textstyle.textstyle14.copyWith(
                              color: const Color(colors.kPrimaryColor)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: device.height * 0.05,
                  ),
                  customMainButton(
                    device: device,
                    txt: "Sign In",
                    onPressed: () {
                      cubit.Login(
                          email: emailController.text,
                          password: passwordController.text);
                    },
                  ),
                  SizedBox(
                    height: device.height * 0.02,
                  ),
                  customSideButton(
                    device: device,
                    txt: 'Sign Up',
                    onPressed: () {
                      Get.to(RegisterScreen());
                    },
                  )
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}

class customTextField2 extends StatelessWidget {
  const customTextField2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.45))),
          suffixIcon:
              IconButton(onPressed: () {}, icon: Image.asset(Aseets.eyesplash)),
          prefixIcon: Image.asset(Aseets.Lock),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          labelText: "Enter Your Password"),
    );
  }
}
