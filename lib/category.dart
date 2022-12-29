import 'package:flutter/material.dart';
import 'package:nimble/details.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Category'),
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
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      child: Image.network(
                          'https://i.pinimg.com/736x/f5/c9/70/f5c970409ef8315c14b1e128b593a903.jpg',
                           fit: BoxFit.cover,
                            ),
                      borderRadius: BorderRadius.circular(25.0),
                     ),
                    ),
                      width: 350,
                      height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Earpods',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 25.0,
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
                          MaterialPageRoute(builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/c4/d3/62/c4d362bf88dc27a340fdb8d227629bbd.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Smart Watch',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
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
                          MaterialPageRoute(builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/736x/5c/52/65/5c52656eb903731d534eff0ad2203637.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Bluetooth Speakers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
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
                          MaterialPageRoute(builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/63/04/73/6304731907ec3ddd7b3a1f9642c735e1.jpg',
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
                      'Headphones/Headsets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
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
                          MaterialPageRoute(builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/564x/0c/ab/47/0cab475ddc06f3be089b0592a4ec2eb5.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Kitchen Appliances',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
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
                          MaterialPageRoute(builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          'https://i.pinimg.com/736x/aa/5a/81/aa5a81192b2b56765ecc6906f2af647b.jpg',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    width: 350,
                    height: 250,
                  ),

                  Container(
                    margin: EdgeInsets.all(15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Table Lamps',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
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
