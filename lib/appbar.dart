import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Nimble'),
      centerTitle: true,
      backgroundColor: Colors.orange,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(50.0);

  }




