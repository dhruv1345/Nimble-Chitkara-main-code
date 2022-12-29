import 'package:flutter/material.dart';
import 'package:nimble/appbar.dart';

import 'package:nimble/navbar.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Your Product History'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            children:[
              SizedBox(height: 300.0),
              Text('HISTORY',
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
