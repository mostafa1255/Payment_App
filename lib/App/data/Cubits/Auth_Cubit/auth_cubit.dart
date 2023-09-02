import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:payment_app/App/data/models/User_Model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? verifyId;

  FirebaseAuth auth = FirebaseAuth.instance;

  void Register(
      {required String email,
      required String password,
      required String name}) async {
    emit(LoadingState());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user?.uid != null) {
        debugPrint("User craeted sucsess${userCredential.user!.uid}");
        //  String mos = await UploadImageToStorage();
        //  debugPrint("Imageeeee Url is $mos");
        sendUserDatatoFirestore(
          name: name,
          email: email,
          UserId: userCredential.user!.uid,
        );
        emit(AuthSignUpSucsess());
      }
    } on FirebaseException catch (e) {
      emit(AuthSignUpFaliure(errmessage: '${e.message}'));
    }
  }

  Future<void> Login({required String email, required String password}) async {
    emit(LoadingState());
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(AuthLoginSucsess());
    } on FirebaseAuthException catch (e) {
      emit(AuthLoginFaliure(errmessage: '${e.message}'));
    }
  }

  void resetPassword({required String email}) async {
    try {
      if (email != "") {
        await auth.sendPasswordResetEmail(email: email);
        emit(ResetPasswordsucsess());
      }
    } on Exception catch (e) {
      emit(ResetPasswordFaliure(errmessage: e.toString()));
    }
  }

  Future<void> verifyEmail() async {
    try {
      auth.currentUser!.sendEmailVerification();
      print("verify sucsess");
    } catch (e) {
      print("verify faliure ${e.toString()}");
    }
  }

  Future<void> checkVerify() async {
    try {
      if (auth.currentUser!.emailVerified) {
        emit(Verifysucsess());
      }
    } catch (e) {
      emit(VerifyFaliure(errmessage: e.toString()));
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

  void sendUserDatatoFirestore({
    required String name,
    required String email,
    required String UserId,
  }) async {
    userModel usermodel = userModel(email: email, id: UserId, name: name);
    try {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(UserId)
          .set(usermodel.toJcon());
      emit(SucsessSavedatatofireStore());
    } on FirebaseException catch (e) {
      emit(FaliureSavedatatofireStore(errmessage: e.toString()));
    }
  }
}
