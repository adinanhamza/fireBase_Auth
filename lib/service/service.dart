import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  Future<void> signUpWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // email verification
      await FirebaseAuth.instance.currentUser?.sendEmailVerification();
      log('user registered! Email verification sent!');
    } on FirebaseAuthException catch (e) {
      log('error in register ${e.message}');
    }
  }

  Future<bool> signInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;

      if (user != null) {
        log(
          'user loged in with email verified ! ${FirebaseAuth.instance.currentUser?.email}',
        );

        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      log('user login failed ${e.message}');
      return false;
    }
  }

  Future<void> logOutEmail() async {
    try {
      await FirebaseAuth.instance.signOut();
      log('user logout successfully : )');
    } on FirebaseAuthException catch (e) {
      log('failed user logout ${e.message}');
    }
  }
}
