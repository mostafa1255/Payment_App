import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Data/cubit/auth_cubit.dart';
import 'package:payment_app/App/Presentation/View/Screens/Auth/Login_Screen/Login_Screen.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customBackIcon.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customTextField1.dart';
import 'package:payment_app/App/Styles/Assets.dart';
import 'package:payment_app/App/Styles/colors.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'package:csc_picker/csc_picker.dart';

class RegisterScreenBody extends StatelessWidget {
  RegisterScreenBody({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSignUpSucsess) {
            Get.showSnackbar(const GetSnackBar(
              title: "Sucsess",
              message: "Create Email Sucsessfull",
              duration: Duration(seconds: 3),
              backgroundColor: Colors.green,
              icon: Icon(Icons.check, color: Colors.white),
            ));
            Get.to(() => LoginScreen());
          } else if (state is AuthSignUpFaliure) {
            Get.showSnackbar(GetSnackBar(
              title: "Faliure",
              message: state.errmessage,
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.red,
              icon: const Icon(Icons.check, color: Colors.white),
            ));
          } else if (state is LoadingState) {
            CircularProgressIndicator();
          }
        },
        builder: (context, state) {
          var cubit = BlocProvider.of<AuthCubit>(context);
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: device.width * 0.03,
                vertical: device.height * 0.04),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customBackIcon(
                      device: device,
                      iconData: Icons.arrow_back_ios,
                      color: Color(colors.kPrimaryColor)),
                  Center(
                      child: Column(
                    children: [
                      Image.asset(Aseets.appLogo),
                      SizedBox(
                        height: device.height * 0.03,
                      ),
                      Text(
                        "Create an account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: device.width * 0.07),
                      )
                    ],
                  )),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  const customTextField1(
                      txt: "First name", icon: Aseets.account),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  const customTextField1(
                      txt: "Last name", icon: Aseets.account),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  const customTextField1(
                      txt: "Phone number", icon: Aseets.Phone),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  customTextField1(
                      txt: "Email", icon: Aseets.Email, data: emailController),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  customTextField1(
                    txt: "Password",
                    icon: Aseets.Lock,
                    data: passwordController,
                  ),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  CSCPicker(
                    onCountryChanged: (value) {},
                    onCityChanged: (value) {},
                    onStateChanged: (value) {},
                    searchBarRadius: 15,
                    dropdownDialogRadius: 15,
                  ),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  customMainButton(
                    device: device,
                    txt: "Sign Up",
                    onPressed: () {
                      cubit.Register(
                          email: emailController.text,
                          password: passwordController.text);
                    },
                  ),
                  SizedBox(
                    height: device.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: textstyle.textstyle14,
                      ),
                      SizedBox(
                        width: device.width * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Text(
                          "Sign in",
                          style: textstyle.textstyle14
                              .copyWith(color: Color(colors.kPrimaryColor)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
