import 'package:flutter/material.dart';
import 'package:yellow_carmailla/sign_in/sign_in_button.dart';

import 'login_mobile_screen.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 70.0, vertical: 50.0),
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

                SizedBox(height: 50.0),
                Text(
                  ' Register',
                  style: TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                // // customTextField("Email", "you@example.com", Icons.mail, false)
                SizedBox(height: 15.0),

                customTextField("Company Name", false),
                SizedBox(height: 10.0),

                customTextField('Email ', false),
                SizedBox(height: 10.0),

                customTextField('Phone_Number', false),
                SizedBox(height: 10.0),

                customTextField('Location', false),
                SizedBox(height: 10.0),

                customTextField('Password', true),
                SizedBox(height: 10.0),
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
