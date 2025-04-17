import 'package:auth_firebase/firebase_options.dart';
import 'package:auth_firebase/view/auth.dart';
import 'package:auth_firebase/view/home.dart';
import 'package:auth_firebase/viewmodel/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return ChangeNotifierProvider(
create: (context) => UserProvider(),
      child: MaterialApp(
        home: user != null ? Home() : AuthPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}