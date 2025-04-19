import 'package:auth_firebase/view/home.dart';
import 'package:auth_firebase/viewmodel/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder:
          (context, value, child) => Scaffold(
            appBar: AppBar(title: Text(value.isLogin ? "Login" : "Sign Up")),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    controller: value.emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: value.passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () async {
                                       if(value.isLogin){
                              final isLogined =        await   value.loginWithEmail();

                      if(isLogined){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
                      }               else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed ')));
                      }
                                       }else{
                                 await        value.createWithEmail();
                                       }
                      // value.isLogin4
                      //     ? await value.loginWithEmail().then((isLogined) {
                      //       isLogined
                      //           ? Navigator.pushReplacement(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => Home(),
                      //             ),
                      //           )
                      //           : ScaffoldMessenger.of(context).showSnackBar(
                      //             SnackBar(content: Text('Login failed')),
                      //           );
                      //     })
                      //     : await value.createWithEmail();
                    },
                    child: Text(value.isLogin ? 'Log In' : 'Sign Up'),
                  ),
                  TextButton(
                    onPressed: () {
                      value.isLogined();
                    },
                    child: Text(
                      value.isLogin
                          ? "Don't have an account? Sign Up"
                          : "Already have an account? Login",
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
