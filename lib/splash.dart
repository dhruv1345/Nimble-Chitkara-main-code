import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nimble/home.dart';
import 'package:nimble/signup.dart';
import 'package:nimble/userlogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

String finalEmail = "";

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  //function to move to home after splash screen
  void initState(){
    getValidationData().whenComplete(() async{
      if(finalEmail != null)
        {
          goToHome();
        }

      else{
        goToLogIn();
      }
    });
    super.initState();
  }

  //checks if the user has previously logged in
  Future getValidationData() async{
    //get the instance of sharedPreferences
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    //store the email of share preferences in the obtained email
    var obtainedEmail = sharedPreferences.getString('email');

    //now set the state
    setState(() {
      finalEmail = obtainedEmail!;
    });

    print(finalEmail);
  }

  void goToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});

    //navigate to home page
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (route) => false);
  }

  void goToLogIn() async {
    await Future.delayed(Duration(seconds: 5), () {});

    //navigate to home page
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => UserLogIn()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 0.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/564x/a4/d0/c2/a4d0c20d0d113a424ab9251d6dfebd41.jpg'),
                    radius: 120.0,
                  ),
                ),
              ),

              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 250.0, 0.0, 10.0),
                  child: Text(
                    'Nimble',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
