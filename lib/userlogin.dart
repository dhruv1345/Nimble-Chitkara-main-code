import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:nimble/home.dart';

//instance to authenticate
final FirebaseAuth _auth = FirebaseAuth.instance;


class UserLogIn extends StatefulWidget {
  const UserLogIn({Key? key}) : super(key: key);

  @override
  State<UserLogIn> createState() => _UserLogInState();
}

class _UserLogInState extends State<UserLogIn> {
  //variables to store email and password entered by user
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //utility variables
  int _success = 0;
  String _userEmail = "";

  //authenticate the user
  void _userlogIn() async{
    final User? user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text)).user;

    //if found set success true;
    if(user != null){
      setState(() {
        _success = 1;
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => Home()),
                (route) => false);
        _userEmail = user.email!;
      });
    }

    //if not found set success -1
    else
    {
      setState(() {
        _success = -1;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                child: Text('Log In',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(20, 35, 30, 0),
              child: Column(
                children: [
                  TextField(
                    //controller saves the user input to specified var
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),

                  TextField(
                    //Controller saves the user input to specified var
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    alignment: Alignment(1,0),
                    padding: EdgeInsets.only(top: 15, left: 20),
                    child: InkWell(
                      child: Text('Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ) ,
                  ),

                  SizedBox(height: 40,),

                  Container(
                    child: ElevatedButton(
                      onPressed: () async {
                        _userlogIn();
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                    ),
                  ),


                  SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

