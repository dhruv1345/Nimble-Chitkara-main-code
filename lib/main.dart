import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nimble/home.dart';
import 'package:nimble/signup.dart';
import 'package:nimble/splash.dart';

//instance for firebase connection
final FirebaseAuth _auth = FirebaseAuth.instance;

void main() async{
  //this initializes the connection between firebase backend
  //and ui
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //splash screen
    home: Splash(),
    debugShowCheckedModeBanner: false,
    routes: {
      '/signup' : (context) => SignUp(),
      '/home': (context) => Home(),
    },
    );
  }
}
