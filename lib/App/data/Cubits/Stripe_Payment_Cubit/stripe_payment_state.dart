part of 'stripe_payment_cubit.dart';

@immutable
sealed class StripePaymentState {}

final class StripePaymentInitial extends StripePaymentState {}

final class StripePaymentLoading extends StripePaymentState {}

final class StripePaymentSucsess extends StripePaymentState {}

final class StripePaymentFaliure extends StripePaymentState {
  final String errmessage;

  StripePaymentFaliure({required this.errmessage});
}
