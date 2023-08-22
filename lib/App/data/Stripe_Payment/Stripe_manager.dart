import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'Stripe_Keys.dart';

abstract class PaymentManager {
  static Future<void> makePayment(int amount, String currancy) async {
    try {
      String _clientSecret =
          await _getClientSecrete((amount * 100).toString(), currancy);
      await _initializePaymentSheet(_clientSecret);
      await Stripe.instance.presentPaymentSheet();
    } on Exception catch (e) {
      print("in catch Bloc");
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  static Future<void> _initializePaymentSheet(String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: "Mostafa Test"),
    );
  }

  static Future<String> _getClientSecrete(
      String amount, String currancy) async {
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
