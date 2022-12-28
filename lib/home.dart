import 'package:flutter/material.dart';
import 'package:nimble/appbar.dart';

import 'package:nimble/navbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            children:[
              SizedBox(height: 300.0),
              Text('HOME PAGE',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.grey[500],
              ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
