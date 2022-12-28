import 'package:flutter/material.dart';
import 'package:nimble/home.dart';
import 'package:nimble/services.dart';

import 'home.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 45.0),
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
            leading: Icon(Icons.production_quantity_limits_outlined),
            title: Text('Our Services'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Services(),
                  ),
              );
            },
          )

        ],
      ),
    );
  }
}
