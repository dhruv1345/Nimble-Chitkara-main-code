import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nimble/home.dart';

//instance to authenticate
final FirebaseAuth _auth = FirebaseAuth.instance;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //variables to store email and password entered by user
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //variables to show messages that user has successfully signed up
  late bool _success;
  late String _userEmail;

  //method to sign up

  void _register() async {
    //creates a user with given email and password
    final User? user =(
        await _auth.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text)).user;

    //if user was created set success true and store its username
    if(user != null){
      setState(() {
        _success = true;
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => Home()),
            (route) => false);
        _userEmail = user.email!;
      });
    }
    else{
      setState(() {
        _success = false;
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
                child: Text('Sign Up',
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
                  SizedBox(height: 45.0,),

                  Container(
                    child: ElevatedButton(
                      onPressed: () async{
                        _register();
                      },
                      child: Text('Sign Up'),

                    ),
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

