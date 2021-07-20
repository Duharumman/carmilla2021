import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yellow_carmailla/pages/get_started.dart';

//flutter run --no-sound-null-safety
Future<void> main() async {
  var _firebase = Firebase;
  //  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Carmilla",
        theme: ThemeData(
          primaryColor: Colors.amberAccent,
          accentColor: Colors.white,
        ),
        // debugShowCheckedModeBanner: flase,
        home: Onboarding());
  }
}
