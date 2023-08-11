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