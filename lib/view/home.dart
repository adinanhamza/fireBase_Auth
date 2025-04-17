
import 'dart:developer';

import 'package:auth_firebase/service/service.dart';
import 'package:auth_firebase/viewmodel/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final islogin =  Provider.of<UserProvider>(context).isLogin;
      return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child:islogin? Text("welcome back") : Text('welcome')
      ),
    ));
  }
}