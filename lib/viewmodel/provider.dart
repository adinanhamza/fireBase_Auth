import 'dart:developer';
import 'package:auth_firebase/service/service.dart';
import 'package:auth_firebase/view/auth.dart';
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
  }on FirebaseAuthException catch (e) {
    log('error in pro register ${e.message}');
  }
}

Future<bool>loginWithEmail()async{
  try {
 log('user entered pro login');

  return  await userService.signInWithEmail(emailController.text.trim(), passwordController.text.trim());
  

  } on FirebaseAuthException catch  (e) {
   
     log('error pro in Login ${e.message}');
    return false;
  }
  }

  Future<void>logOutWithEmail(BuildContext context)async{
    try {
      await userService.logOutEmail();
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> AuthPage()),(route)=> false);
    } catch (e) {
      
    }
  }

  void isLogined(){
isLogin = !isLogin;
notifyListeners();
  }
}


