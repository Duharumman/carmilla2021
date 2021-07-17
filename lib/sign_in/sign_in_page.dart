import 'package:flutter/material.dart';
import 'package:yellow_carmailla/pages/get_started.dart';
import 'package:yellow_carmailla/pages/nav_drawer.dart';
import 'package:yellow_carmailla/sign_in/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CarMilla'),
      ),
      drawer: NavDrawer(),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  text: 'sign in with Google',
                  textColor: Colors.black,
                  color: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 8.0,
                ),
                SignInButton(
                  text: 'sign in with Facebook',
                  textColor: Colors.black,
                  color: Color(0xFF334D92),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 8.0,
                ),
                SignInButton(
                  text: 'sign in with Email',
                  textColor: Colors.black,
                  color: Colors.teal,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'or',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SignInButton(
                  text: 'Sing Up ',
                  textColor: Colors.black,
                  color: Colors.amberAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Onboarding()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
