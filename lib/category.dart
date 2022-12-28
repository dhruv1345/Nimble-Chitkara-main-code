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
                          'https://i.pinimg.com/564x/1f/42/e8/1f42e8ba44c0b7a5fcd477e00afe16a9.jpg',
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
                          'https://i.pinimg.com/564x/09/30/e7/0930e7692b8e275b62720bdcc06927b1.jpg',
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
            ],
          ),
        ),
      ),
    );
  }
}
