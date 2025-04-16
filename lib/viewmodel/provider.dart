import 'dart:developer';

import 'package:auth_firebase/service/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  bool isLogin = false;
final  TextEditingController emailController = TextEditingController();
final  TextEditingController passwordController= TextEditingController();
UserService userService = UserService();


Future<void>createWithEmail()async{
  try {
    await userService.signUpWithEmail(emailController.text.trim(), passwordController.text.trim());
// log('registered user success !');
  }on FirebaseAuthException catch (e) {
    log('error in register ${e.message}');
  }
}

Future<void>loginWithEmail()async{
  try {
    await userService.signInWithEmail(emailController.text.trim(), passwordController.text.trim());
    // log('Login user success !');
  } on FirebaseAuthException catch  (e) {
     log('error in Login ${e.message}');
  }
  }

  void isLogined(){
isLogin = !isLogin;
notifyListeners();
  }
}



