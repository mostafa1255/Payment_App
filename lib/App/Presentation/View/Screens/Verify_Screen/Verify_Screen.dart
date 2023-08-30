import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/App/Presentation/View/Widgets/customMainButton.dart';
import 'package:payment_app/App/Styles/text_Style.dart';
import 'package:payment_app/App/data/Cubits/Auth_Cubit/auth_cubit.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: device.width * 0.03,
                  vertical: device.height * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "please click Verify Button to Verify Your Email",
                      style: textstyle.textstyle14,
                    ),
                  ),
                  SizedBox(
                    height: device.height * 0.1,
                  ),
                  customMainButton(
                    device: device,
                    txt: "Verify",
                    onPressed: () {
                      BlocProvider.of<AuthCubit>(context).verifyEmail();
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
