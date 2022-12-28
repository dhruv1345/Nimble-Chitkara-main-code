import 'package:flutter/material.dart';
import 'package:nimble/home.dart';
import 'package:nimble/signup.dart';
import 'package:nimble/userlogin.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  //function to move to home after splash screen
  void initState(){
    super.initState();
    goToHome();
  }

  void goToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});

    //navigate to home page
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => UserLogIn()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
    );
  }
}
