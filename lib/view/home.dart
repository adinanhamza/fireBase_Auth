import 'package:auth_firebase/viewmodel/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isLogin = false;

  // Future<void> handleAuth() async {
  //   final email = _emailController.text.trim();
  //   final password = _passwordController.text.trim();

  //   try {
  //     if (isLogin) {
  //       await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text("Logged in successfully!")),
  //       );
  //     } else {
  //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password,
  //       );
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text("Account created successfully!")),
  //       );
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("Error: ${e.toString()}")),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, value, child) => 
       Scaffold(
        appBar: AppBar(title: Text(value.isLogin ? "Login" : "Sign Up")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller:value.emailController,
                decoration: InputDecoration(labelText:'Email'),
              ),
              TextField(
                controller:value.passwordController,
                decoration: InputDecoration(labelText:'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: value.isLogin ?
               value.loginWithEmail
                :  value.createWithEmail
                ,
                child: Text(value.isLogin ? 'Log In' : 'Sign Up'),
              ),
              TextButton(
                onPressed: () {
                  value.isLogined();
                },
                child: Text(value.isLogin
                    ? "Don't have an account? Sign Up"
                    : "Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
