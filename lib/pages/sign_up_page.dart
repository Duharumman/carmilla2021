import 'package:flutter/material.dart';
import 'package:yellow_carmailla/sign_in/sign_in_button.dart';

import 'login_mobile_screen.dart';
import 'nav_drawer.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        title: Text(
          "Register",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
        centerTitle: true,
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 16),
        //     child: IconButton(
        //       icon: Icon(Icons.menu),
        //       color: Colors.black,
        //       onPressed: () {},
        //     ),
        //   )
        // ],
      ),
      drawer: NavDrawer(),
      body: Container(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: double.infinity),
                SizedBox(height: 70.0),
                SizedBox(height: 20.0),
                customTextField("First Name", false),
                SizedBox(height: 20.0),
                customTextField('Last Name', false),
                SizedBox(height: 20.0),
                customTextField('Email', false),
                SizedBox(height: 20.0),
                customTextField('Password', true),
                SizedBox(height: 23.0),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SignInButton(
                        text: 'CREATE ACCOUNT',
                        textColor: Colors.white,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginMobile()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customTextField(String title, bool isPassword) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        title,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      TextFormField(
        obscureText: isPassword,
        // decoration: InputDecoration(hintText: hintText, prefixIcon: Icon(icon)),
      )
    ],
  );
}
