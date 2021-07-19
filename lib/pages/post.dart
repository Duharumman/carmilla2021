import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  _post createState() => _post();
}

class _post extends State<Post> {
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
                icon: Icon(Icons.menu),
                color: Colors.black,
                onPressed: () {},
              ),
            )
          ],
        ),
        body: new Container(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17.0)),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: new Container(
                      //  child: new Text ("Item#$index"),
                      margin: const EdgeInsets.only(right: 100, left: 100),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      constraints: BoxConstraints(
                        minHeight: 10,
                        minWidth: 50,
                      ),

                      child: DropdownButton(
                        isExpanded: true,
                        iconSize: 50,
                        // elevation: 200,
                        dropdownColor: Theme.of(context).primaryColor,
                        // value: "ford",

                        hint: Text("Type of car  "),
                        items: [
                          DropdownMenuItem(
                            value: "BMW",
                            child: Center(
                              child: Text("BMW"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "mercedes",
                            child: Center(
                              child: Text("mercedes"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "porsche",
                            child: Center(
                              child: Text("porsche"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "vw",
                            child: Center(
                              child: Text("vw"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "hyundai",
                            child: Center(
                              child: Text("hyundai"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "nissan",
                            child: Center(
                              child: Text("nissan"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "toyota",
                            child: Center(
                              child: Text("toyota"),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "ford",
                            child: Center(
                              child: Text("ford"),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            // if (value == 1)
                            //   print("H");
                            // else if (value == 2)
                            //   print("E");
                            // else if (value == 3)
                            //   print("L");
                            // else if (value == 4) print("L");
                          });
                        },
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        underline: Container(
                          height: 3,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // customTextField("Type of car", false),
                  SizedBox(height: 20.0),
                  customTextField("price", false),
                  SizedBox(height: 20.0),
                  customTextField('describtion', false),
                  SizedBox(height: 20.0),
                  customTextField('Location', false),
                  SizedBox(height: 20.0),
                  customTextField('phoneNumber', true),
                  SizedBox(height: 20.0),
                  // customTextField("add car", false),
                ],
              ),
            ),
          ),
        ));
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






//   Padding(Padding :const EdgeInsets.all(5.0),
  
//   DropdownButton<Item>(
//             hint:Text("Select item"),
//             value: selectedUser,
//             onChanged: (Item Value) {
//               setState(() {
//                 selectedUser = Value;
//               });
//             },
//             items: users.map((Item user) {
//               return  DropdownMenuItem<Item>(
//                 value: user,
//                 child: Row(
//                   children: <Widget>[
//                     user.icon,
//                     SizedBox(width: 10,),
//                     Text(
//                       user.name,
//                       style:  TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//   ),

// // class Item {
// //   const Item(this.name,this.icon);
// //   final String name;
// //   final Icon icon;
// // }
// // class DropdownScreen extends StatefulWidget {
// //   State createState() =>  DropdownScreenState();
// // }
// class DropdownScreenState extends State<DropdownScreen> {
//   Item selectedUser;
//   List<Item> users = <Item>[
//     const Item('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
//     const Item('Flutter',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
//     const Item('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
//     const Item('iOS',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home:  Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xFF167F67),
//           title: Text(
//             'Dropdown options',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body:  Center(
//           child:  DropdownButton<Item>(
//             hint:  Text("Select item"),
//             value: selectedUser,
//             onChanged: (Item Value) {
//               setState(() {
//                 selectedUser = Value;
//               });
//             },
//             items: users.map((Item user) {
//               return  DropdownMenuItem<Item>(
//                 value: user,
//                 child: Row(
//                   children: <Widget>[
//                     user.icon,
//                     SizedBox(width: 10,),
//                     Text(
//                       user.name,
//                       style:  TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
// Padding(
//                   padding: const EdgeInsets.all(5.0),
//                   child: Container(
//                     padding: EdgeInsets.only(left: 16, right: 16),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 2),
//                         borderRadius: BorderRadius.circular(15)),
//                     constraints: BoxConstraints(
//                       minHeight: 45,
//                       minWidth: double.infinity,
//                     ),
//                     child: DropdownButton(
//                       items: [
//                         DropdownMenuItem(
//                           value: 1,
//                           child: Center(
//                             child: Text("Addition"),
//                           ),
//                         ),
//                         DropdownMenuItem(
//                           value: 2,
//                           child: Center(
//                             child: Text("Substraction"),
//                           ),
//                         ),
//                         DropdownMenuItem(
//                           value: 3,
//                           child: Center(
//                             child: Text("Multiplication"),
//                           ),
//                         ),
//                         DropdownMenuItem(
//                           value: 4,
//                           child: Center(
//                             child: Text("Division"),
//                           ),
//                         ),
//                       ],