// import 'package:flutter/material.dart';
// class CarDetailState extends State<CarDetail> {
//   DatabaseHelper helper = DatabaseHelper();

//   String appBarTitle;
//   String imagePath='';
//   ListData car;
//   TextEditingController nameController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//   TextEditingController priceController = TextEditingController();
//   TextEditingController imageController = TextEditingController();

//   bool isEdited = false;

//   CarDetailState(this.car, this.appBarTitle);

//   @override
//   Widget build(BuildContext context) {
//     nameController.text = car.name;
//     descriptionController.text = car.description;
//     priceController.text = car.price;
//     imageController.text = car.image;
//     imagePath = car.image;

//     return WillPopScope(
//         onWillPop: () async {
//           isEdited ? showDiscardDialog(context) : moveToLastScreen();
//           return false;
//         },
//         child: Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             title: Text(
//               appBarTitle,
//               style: Theme.of(context).textTheme.headline5,
//             ),
//             //backgroundColor: colors[color],
//             leading: IconButton(
//                 icon: Icon(Icons.arrow_back_ios, color: Colors.black),
//                 onPressed: () {
//                   isEdited ? showDiscardDialog(context) : moveToLastScreen();
//                 }),
//             actions: <Widget>[
//               IconButton(
//                 icon: Icon(
//                   Icons.save,
//                   color: Colors.black,
//                 ),
//                 onPressed: () {
//                   nameController.text.length == 0
//                       ? showEmptyNameDialog(context)
//                       : priceController.text.length == 0
//                       ? showEmptyPriceDialog(context)
//                       : imagePath == '' ||imagePath.length == 0
//                       ? showEmptyImageDialog(context)
//                       : _save();
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.delete, color: Colors.black),
//                 onPressed: () {
//                   showDeleteDialog(context);
//                 },
//               )
//             ],
//           ),
//           body:SingleChildScrollView(
//               child: Container(
//                 color: Colors.grey.shade300,
//                 child: Column(
//                   // children: <Widget>[
//                   //   ImagePicker(
//                   //     //  selectedIndex: 3 - car.image,
//                   //     onTap: (index) {
//                   //       // imagePath
//                   //       setState(() {
//                   //         imagePath = index;
//                   //         imageController.text= index;
//                   //       });
//                   //       isEdited = true;
//                   //       car.image = index;
//                   //     },
//                   //   ),
//                     /*ColorPicker(
//                   selectedIndex: note.color,
//                   onTap: (index) {
//                     setState(() {
//                       color = index;
//                     });
//                     isEdited = true;
//                     note.color = index;
//                   },
//                 ),*/
//                     Text(""),
//                     Container(
//                       color: Colors.grey.shade300,
//                       padding: EdgeInsets.all(8.0),
//                       height: 100,
//                       child: Container(
//                         child: AspectRatio(
//                           aspectRatio: 2,
//                           child: Image.asset(
//                             //  'assets/images/car2.png',
//                             this.imagePath,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     new TextFieldWidget("Name", nameController, text: car.name,
//                         onChanged: (value) {
//                           updateName();
//                         }),
//                     new TextFieldWidget("Price", priceController,
//                         keyboardType: TextInputType.number,
//                         text: car.price, onChanged: (value) {
//                           updatePrice();
//                         }),
//                     new TextFieldWidget("Description", descriptionController,
//                         text: car.description, onChanged: (value) {
//                           updateDescription();
//                         }),
//                     /* TextField(
//                   controller: imageController,
//                 ),*/

//                   ],
//                 ),
//               )),
//         ));
//   }

//   void showDiscardDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "Discard Changes?",
//             style: Theme.of(context).textTheme.bodyText2,
//           ),
//           content: Text("Are you sure you want to discard changes?",
//               style: Theme.of(context).textTheme.bodyText1),
//           actions: <Widget>[
//             TextButton(
//               child: Text("No",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text("Yes",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 moveToLastScreen();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void showEmptyNameDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "Name is empty!",
//             style: Theme.of(context).textTheme.bodyText2,
//           ),
//           content: Text('The Name of the car cannot be empty.',
//               style: Theme.of(context).textTheme.bodyText1),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Okay",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void showEmptyPriceDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "Price is empty!",
//             style: Theme.of(context).textTheme.bodyText2,
//           ),
//           content: Text('The Price of the car cannot be empty.',
//               style: Theme.of(context).textTheme.bodyText1),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Okay",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//   void showEmptyImageDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "Image is empty!",
//             style: Theme.of(context).textTheme.bodyText2,
//           ),
//           content: Text('The Image of the car cannot be empty.',
//               style: Theme.of(context).textTheme.bodyText1),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Okay",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void showDeleteDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(10.0))),
//           title: Text(
//             "Delete Car?",
//             style: Theme.of(context).textTheme.bodyText2,
//           ),
//           content: Text("Are you sure you want to delete this car?",
//               style: Theme.of(context).textTheme.bodyText1),
//           actions: <Widget>[
//             TextButton(
//               child: Text("No",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text("Yes",
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyText2
//                       .copyWith(color: Colors.purple)),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _delete();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void moveToLastScreen() {
//     Navigator.pop(context, true);
//   }

//   void updateName() {
//     isEdited = true;
//     car.name = nameController.text;
//   }

//   void updatePrice() {
//     isEdited = true;
//     car.price = priceController.text;
//   }

//   void updateDescription() {
//     isEdited = true;
//     car.description = descriptionController.text;
//   }

//   // Save data to database
//   void _save() async {
//     // await helper.insertCar(car);
//     // print("car.id "+car.id);
//     // car.image = 'assets/images/car1.png';
//     car.image =imagePath;
//     if (car.id.trim() != null && car.id.trim().length > 0) {
//       print('updateCar');
//       await helper.updateCar(car);
//     } else {
//       print('insertCar');
//       await helper.insertCar(car);
//     }

//     moveToLastScreen();
//   }

//   void _delete() async {
//     await helper.deleteCar(car.id);
//     moveToLastScreen();
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ProfileController profilerController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 40,
            ),
          ],
        ),
        child: SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: [
              Obx(() {
                if (profilerController.isLoading.value) {
                  return CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/no_user.jpg'),
                    child: Center(
                        child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    )),
                  );
                } else {
                  if (profilerController.imageURL.length != 0) {
                    return CachedNetworkImage(
                      imageUrl: profilerController.imageURL,
                      fit: BoxFit.cover,
                      imageBuilder: (context, imageProvider) => CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: imageProvider,
                      ),
                      placeholder: (context, url) => CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/no_user.jpg'),
                        child: Center(
                            child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                        )),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    );
                  } else {
                    return CircleAvatar(
                      backgroundImage: AssetImage('assets/icons/no_user.jpg'),
                    );
                  }
                }
              }),
              Positioned(
                right: -16,
                bottom: 0,
                child: SizedBox(
                  height: 46,
                  width: 46,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white),
                    ),
                    color: Colors.grey[200],
                    onPressed: () {
                      Get.bottomSheet(
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0)),
                          ),
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.end,
                            children: [
                              ListTile(
                                leading: Icon(Icons.camera),
                                title: Text('Camera'),
                                onTap: () {
                                  Get.back();
                                  profilerController
                                      .uploadImage(ImageSource.camera);
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.image),
                                title: Text('Gallery'),
                                onTap: () {
                                  Get.back();
                                  profilerController
                                      .uploadImage(ImageSource.gallery);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
