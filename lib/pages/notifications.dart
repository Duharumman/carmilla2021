import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        title: Text(
          "CARMIALLA",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(Icons.mail),
              color: Colors.black,
              onPressed: () {},
            ),
          )
        ],
      ),
      drawer: NavDrawer(),
    );
  }
}
