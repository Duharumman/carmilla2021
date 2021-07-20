import 'package:flutter/material.dart';
import 'package:yellow_carmailla/pages/sign_up_page.dart';
import 'package:yellow_carmailla/pages/timeline.dart';
import 'package:yellow_carmailla/sign_in/loginButton.dart';

import 'nav_drawer.dart';

class LoginMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        title: Text(
          "Sign-In",
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
      body: Center(
        child: Card(
          elevation: 10,
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 150.0),
                customTextField("Email", "you@example.com", Icons.mail, false),
                SizedBox(height: 20.0),
                customTextField("Password", "Enter Password", Icons.lock, true),
                SizedBox(height: 15.0),
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: LogInButton(
                    text: 'Sign In',
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Timeline()));
                    },
                    icon: Icon(
                      Icons.login_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(height: 23.0),
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                // Center(
                //   child: RichText(
                //       text: TextSpan(children: [
                //     TextSpan(
                //       text: "Don't have an account?",
                //       style: TextStyle(
                //           color: Theme.of(context).primaryColor,
                //           fontSize: 18,
                //           fontWeight: FontWeight.w500),
                //     ),
                //   ])),
                // ),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: LogInButton(
                    text: 'Sign up',
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpPage()));
                    },
                    icon: Icon(
                      Icons.login_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextField(
      String title, String hintText, IconData icon, bool isPassword) {
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
          decoration:
              InputDecoration(hintText: hintText, prefixIcon: Icon(icon)),
        )
      ],
    );
  }
}
