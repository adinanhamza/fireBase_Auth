import 'package:auth_firebase/viewmodel/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

final userProvider = Provider.of<UserProvider>(context);
      return SafeArea(child: Scaffold(
      appBar: AppBar(
actions: [
  IconButton(onPressed: (){
userProvider.logOutWithEmail(context);
  }, icon: Icon(Icons.logout))
],

      ),
      body: Center(
        child:Text('Welcome to the screen!')
      ),
    ));
  }
}