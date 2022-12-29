import 'package:flutter/material.dart';
import 'package:nimble/category.dart';
import 'package:nimble/consultation.dart';
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
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Category(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://www.download-monitor.com/wp-content/uploads/2021/08/create-digital-downloads-to-sell-1024x457.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Test Your Product',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Consult(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://www.download-monitor.com/wp-content/uploads/2022/04/platforms-to-sell-digital-downloads-1024x458.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Consult Our Specialists',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),

    );
  }
}
