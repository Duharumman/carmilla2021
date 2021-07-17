// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         body: new Stack(
//       children: <Widget>[
//         ClipPath(
//           child: Container(color: Colors.black.withOpacity(0.8)),
//           clipper: getClipper(),
//         ),
//         Positioned(
//             width: 350.0,
//             top: MediaQuery.of(context).size.height / 5,
//             child: Column(
//               children: <Widget>[
//                 Container(
//                     width: 150.0,
//                     height: 150.0,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
//                             fit: BoxFit.cover),
//                         borderRadius: BorderRadius.all(Radius.circular(75.0)),
//                         boxShadow: [
//                           BoxShadow(blurRadius: 7.0, color: Colors.black)
//                         ])),
//                 SizedBox(height: 90.0),
//                 Text(
//                   'Tom Cruise',
//                   style: TextStyle(
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Montserrat'),
//                 ),
//                 SizedBox(height: 15.0),
//                 Text(
//                   'Subscribe guys',
//                   style: TextStyle(
//                       fontSize: 17.0,
//                       fontStyle: FontStyle.italic,
//                       fontFamily: 'Montserrat'),
//                 ),
//                 SizedBox(height: 25.0),
//                 Container(
//                     height: 30.0,
//                     width: 95.0,
//                     child: Material(
//                       borderRadius: BorderRadius.circular(20.0),
//                       shadowColor: Colors.greenAccent,
//                       color: Colors.green,
//                       elevation: 7.0,
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: Center(
//                           child: Text(
//                             'Edit Name',
//                             style: TextStyle(
//                                 color: Colors.white, fontFamily: 'Montserrat'),
//                           ),
//                         ),
//                       ),
//                     )),
//                 SizedBox(height: 25.0),
//                 Container(
//                     height: 30.0,
//                     width: 95.0,
//                     child: Material(
//                       borderRadius: BorderRadius.circular(20.0),
//                       shadowColor: Colors.redAccent,
//                       color: Colors.red,
//                       elevation: 7.0,
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: Center(
//                           child: Text(
//                             'Log out',
//                             style: TextStyle(
//                                 color: Colors.white, fontFamily: 'Montserrat'),
//                           ),
//                         ),
//                       ),
//                     ))
//               ],
//             ))
//       ],
//     ));
//   }
// }

// class getClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();

//     path.lineTo(0.0, size.height / 1.9);
//     path.lineTo(size.width + 125, 0.0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     return true;
//   }
// }

// import 'package:flutter/material.dart';

// import 'nav_drawer.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'nav_drawer.dart';

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavDrawer(),
//       appBar: AppBar(
//         title: Text('Side menu'),
//       ),
//       body: Center(
//         child: Text('Side Menu Tutorial'),
//       ),
//     );
//   }
// // }
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("Widget.title"),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             "notificationAlert",
//           ),
//           Text(
//             "messageTitle",
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ],
//       ),
//     ),
//   );
// }

// @override
// void initState() {
//   // TODO: implement initState
//   super.initState();

//   _firebaseMessaging.configure(
//     onMessage: (message) async {
//       setState(() {
//         messageTitle = message["notification"]["title"];
//         notificationAlert = "New Notification Alert";
//       });
//     },
//     onResume: (message) async {
//       setState(() {
//         messageTitle = message["data"]["title"];
//         notificationAlert = "Application opened from Notification";
//       });
//     },
//   );
// }

class post extends StatelessWidget {
  final urlImage;
  final urlProifle =
      'https://avatars0.githubusercontent.com/u/19872458?s=460&v=4';

  post(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white70,
        title: Text('Posts', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  //Profile Picture
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        urlProifle,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //Username
                  Text(
                    'dhiaulhaq',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),

            //Posts
            Container(
              child: Hero(
                  tag: urlImage,
                  child: Image.network(urlImage, fit: BoxFit.cover)),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
            ),

            //Insight/Promotions
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("View Insights",
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Promote'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),

            //Divider
            Divider(),

            //Icons
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Icon(Icons.favorite_border),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.comment),
                ),
                Icon(Icons.send),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.filter_frames),
                ),
              ],
            ),

            //Latest Post
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('September, 29, 2020',
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
