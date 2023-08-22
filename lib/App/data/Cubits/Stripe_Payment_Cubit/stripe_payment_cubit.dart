import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:meta/meta.dart';
import '../../../Tools/Stripe_Keys.dart';
part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit() : super(StripePaymentInitial());
  Future<void> makePayment(int amount, String currancy) async {
    try {
      String _clientSecret =
          await _getClientSecrete((amount * 100).toString(), currancy);
      await _initializePaymentSheet(_clientSecret);
      await Stripe.instance.presentPaymentSheet();
      emit(StripePaymentSucsess());
    } on Exception catch (e) {
      print("in catch Bloc");
      emit(StripePaymentFaliure(errmessage: e.toString()));
    }
  }

  Future<void> _initializePaymentSheet(String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: "Mostafa Test"),
    );
  }

  Future<String> _getClientSecrete(String amount, String currancy) async {
    Dio dio = Dio();
    var response = await dio.post(
      'https://api.stripe.com/v1/payment_intents',
      options: Options(
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secreteKey}',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
      ),
      data: {
        'amount': amount,
        'currency': currancy,
      },
    );
    return response.data["client_secret"];
  }
}
