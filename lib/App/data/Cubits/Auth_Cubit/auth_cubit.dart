import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? verifyId;

  FirebaseAuth auth = FirebaseAuth.instance;

  void Register({required String email, required String password}) async {
    emit(LoadingState());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(AuthSignUpSucsess());
    } on FirebaseException catch (e) {
      emit(AuthSignUpFaliure(errmessage: '${e.message}'));
    }
  }

  void Login({required String email, required String password}) async {
    emit(LoadingState());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(AuthLoginSucsess());
    } on FirebaseAuthException catch (e) {
      emit(AuthLoginFaliure(errmessage: '${e.message}'));
    }
  }

  void PhoneAuth({required String phoneNumber}) async {
    emit(LoadingState());
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: "+2$phoneNumber",
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) async {
          verifyId = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      emit(AuthPhoneSucsess());
    } on FirebaseAuth catch (e) {
      emit(AuthPhoneFaliure(errmessage: e.toString()));
    }
  }

  void sentCode(
      {required String smsCode, required String verificationId}) async {
    // Create a PhoneAuthCredential with the code
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    await auth.signInWithCredential(credential);
  }
}
