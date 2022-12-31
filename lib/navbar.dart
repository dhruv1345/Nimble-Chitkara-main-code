import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nimble/category.dart';
import 'package:nimble/history.dart';
import 'package:nimble/home.dart';
import 'package:nimble/services.dart';
import 'package:nimble/userlogin.dart';
import 'package:nimble/database.dart';
import 'package:provider/provider.dart';


import 'home.dart';
//instance to authenticate
final FirebaseAuth _auth = FirebaseAuth.instance;


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  User currentUser = FirebaseAuth.instance.currentUser!;
  String name = "loading..";
  String emailId = "loading...";

  signOut() async{
    await _auth.signOut();
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => UserLogIn()));
  }
  
  void getData() async{
    DocumentSnapshot<Map<String, dynamic>> userData = await FirebaseFirestore.instance.collection("Users").doc(currentUser.uid).get();
    setState(() {
      name = userData.data()!['name'] ;
      emailId = userData.data()!['emailId'];
    });
  }
  

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text(name),
            accountEmail: Text(emailId),
            currentAccountPicture:Container(
              child: ClipRRect(
                child: Image.network('https://i.pinimg.com/564x/e9/9c/a3/e99ca3e4de5d2706d2eda0add0578a76.jpg',
                fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 150,
              height: 120,
            ),
            decoration: BoxDecoration(
              color: Colors.orange[500],
            ),
          ),

            SizedBox(height: 2.0),


            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home(),
                    ),
                );
              },
            ),


            ListTile(
              leading: Icon(Icons.miscellaneous_services),
              title: Text('Our Services'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Services(),
                    ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Category(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => History(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                signOut();
              },
            ),
          ],
        ),
    );
  }
}
