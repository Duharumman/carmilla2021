// import 'package:flutter/material.dart';
// import 'package:yellow_carmailla/models/car.dart';

// class Timeline extends StatefulWidget {
//   @override
//   _TimelineState createState() => _TimelineState();
// }

// class _TimelineState extends State<Timeline> {
//   List<NavigationItem> navigationItems = getNavigationItemList();
//   late NavigationItem selectedItem;
//   int index = 2;

//   final tabs = [
//     Center(
//       child: Text('home'),
//     ),
//     Center(
//       child: Text('post'),
//     ),
//     Center(
//       child: Text('net'),
//     ),
//     Center(
//       child: Text('profile'),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // Lets restart the app so icons can load
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         brightness: Brightness.light,
//         centerTitle: true,
//         title: Text(
//           "CARMIALLA",
//           style: TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             color: Theme.of(context).primaryColor,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 16),
//             child: IconButton(
//               icon: Icon(Icons.menu),
//               color: Colors.black,
//               onPressed: () {},
//             ),
//           )
//         ],
//       ),
//       body: tabs[index],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [

//         ],
//       ),
//     );
//   }

//   List<Widget> buildNavigationItems() {
//     List<Widget> list = [];
//     for (var navigationItem in navigationItems) {
//       list.add(buildNavigationItem(navigationItem));
//     }
//     return list;
//   }

//   Widget buildNavigationItem(NavigationItem item) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedItem = item;
//         });
//       },
//       child: Container(
//         width: 50,
//         child: Stack(
//           children: <Widget>[
//             selectedItem == item
//                 ? Center(
//                     child: Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.amberAccent[50],
//                       ),
//                     ),
//                   )
//                 : Container(),
//             Center(
//               child: Icon(
//                 item.iconData,
//                 color: selectedItem == item
//                     ? Theme.of(context).primaryColor
//                     : Colors.grey[400],
//                 size: 24,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yellow_carmailla/pages/post.dart';
import 'package:yellow_carmailla/pages/profile.dart';

import 'demo.dart';
import 'home.dart';
import 'notifications.dart';

class Timeline extends StatefulWidget {
  int initialPage = 0;
  @override
  _Timeline createState() => _Timeline();
}

class _Timeline extends State<Timeline> {
  List _pageOptions = [
    Home(),
    Post(),
    notifications(),
    Profile(),
  ];

  late int _page;

  @override
  void initState() {
    super.initState();
    setState(() {
      _page = widget.initialPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      body: _pageOptions[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: _theme.primaryColor,
        selectedItemColor: _theme.accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _page,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Account'),
        ],
      ),
    );
  }
}
