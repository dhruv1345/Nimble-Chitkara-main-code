import 'package:flutter/material.dart';
import 'package:nimble/category.dart';
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
          UserAccountsDrawerHeader(accountName: Text('user xyz'),
            accountEmail: Text('example@gmail.com'),
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
                MaterialPageRoute(builder: (context) => Services(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
