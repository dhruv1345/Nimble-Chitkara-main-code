import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/564x/a4/d0/c2/a4d0c20d0d113a424ab9251d6dfebd41.jpg'),
                  radius: 120.0,
                ),
              ),

              SizedBox(height: 10,),
              Center(
                child: Container(
                  child: Text(
                    'Generating Report',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
