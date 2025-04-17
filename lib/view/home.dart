import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
final user = FirebaseAuth.instance.currentUser;
      return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: user != null ? Text('welcome back ${user.email}!'): Text('welcome guest!')
      ),
    ));
  }
}