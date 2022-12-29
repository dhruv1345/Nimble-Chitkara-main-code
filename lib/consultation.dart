import 'package:flutter/material.dart';
import 'package:nimble/details.dart';

class Consult extends StatelessWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consult Our Specialists'),
        backgroundColor: Colors.orange,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(0.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/f9/e1/d4/f9e1d4b190456d4fc039ff1ff50dd4dc.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 200,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Johnson\nProduct Design Engineeer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
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
                      onTap: () {},
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/1f/0b/73/1f0b7339068e298b27ba692300be40dd.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 220,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Claire\nMarketing Strategist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
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
                      onTap: () {},
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/9e/9b/2b/9e9b2b4628995d59e25bb847320297d1.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 200,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'David\nEconomist',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
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
                      onTap: () {},
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/5c/16/ed/5c16edca4e36e06c376739c8974c2ea7.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 200,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sophia\nProduct Development Engineer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
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
