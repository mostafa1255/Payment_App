import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<void> Register(
      {required String email, required String password}) async {
    emit(LoadingState());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(AuthSignUpSucsess());
    } on FirebaseException catch (e) {
      emit(AuthSignUpFaliure(errmessage: '${e.message}'));
    }
  }

  Future<void> Login({required String email, required String password}) async {
    emit(LoadingState());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      if (userCredential.user?.uid != null) {
        print("in Auth Cubit" + userCredential.user!.uid);
        final sharedPref = await SharedPreferences.getInstance();
        await sharedPref.setString('userId', userCredential.user!.uid);
        emit(AuthLoginSucsess());
      } else {
        print("in Auth Cubit  UID is Null");
      }
    } on FirebaseException catch (e) {
      emit(AuthLoginFaliure(errmessage: '${e.message}'));
    }
  }
}
