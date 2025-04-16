import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class UserService {

Future <void>signUpWithEmail(String email,String password)async{
try {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  log('user registered!');
}on FirebaseAuthException catch (e) {
  log('error in register ${e.message}');
}
}


Future<void>signInWithEmail(String email,String password)async{
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    log('user loged in !');
  }on FirebaseAuthException catch (e) {
    log('user login failed ${e.message}');
  }
}

User? user = FirebaseAuth.instance.currentUser;


}