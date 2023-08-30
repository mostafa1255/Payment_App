part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoadingState extends AuthState {}

final class AuthSignUpSucsess extends AuthState {}

final class AuthSignUpFaliure extends AuthState {
  final String errmessage;

  AuthSignUpFaliure({required this.errmessage});
}

final class AuthLoginSucsess extends AuthState {}

final class AuthLoginFaliure extends AuthState {
  final String errmessage;

  AuthLoginFaliure({required this.errmessage});
}

final class AuthPhoneSucsess extends AuthState {}

final class AuthPhoneFaliure extends AuthState {
  final String errmessage;

  AuthPhoneFaliure({required this.errmessage});
}

final class ResetPasswordsucsess extends AuthState {}

final class ResetPasswordFaliure extends AuthState {
  final String errmessage;

  ResetPasswordFaliure({required this.errmessage});
}

final class Verifysucsess extends AuthState {}

final class VerifyFaliure extends AuthState {
  final String errmessage;

  VerifyFaliure({required this.errmessage});
}
