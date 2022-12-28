import 'package:flutter/material.dart';
import 'package:nimble/navbar.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Services'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 300.0),
              Text('SERVICES',
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
