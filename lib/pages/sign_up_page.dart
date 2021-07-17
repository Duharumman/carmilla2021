import 'package:flutter/material.dart';
import 'package:yellow_carmailla/sign_in/sign_in_button.dart';

import 'login_mobile_screen.dart';

class SignUpPage extends StatelessWidget {
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
                Center(
                    // child: Image.asset(
                    //   'assets/logo_pink.png',
                    //   height: 100.0,
                    //   width: 100.0,
                    // ),
                    ),
                SizedBox(height: 70.0),
                Text(
                  ' Register',
                  style: TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                // // customTextField("Email", "you@example.com", Icons.mail, false)
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
                // Container(
                //   width: double.infinity,
                //   height: 50,
                //   child: ElevatedButton(
                //     style: ButtonStyle(
                //         backgroundColor: MaterialStateProperty.all(
                //             Theme.of(context).primaryColor)),
                //     onPressed: () {},
                //     child: Row(
                //       children: [
                //         Text(
                //           "CREATE ACCOUNT",
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 20,
                //               fontWeight: FontWeight.w600),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
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
