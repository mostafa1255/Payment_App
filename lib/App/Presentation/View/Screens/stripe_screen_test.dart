import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/App/data/Cubits/Stripe_Payment_Cubit/stripe_payment_cubit.dart';

class Stripetest extends StatelessWidget {
  const Stripetest({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StripePaymentCubit(),
      child: BlocConsumer<StripePaymentCubit, StripePaymentState>(
        listener: (context, state) {
      // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text("Stripe Payment")),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () async {
                        await BlocProvider.of<StripePaymentCubit>(context)
                            .makePayment(100, "USD");
                      },
                      child: const Text("Pay 20 Dollars")),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
