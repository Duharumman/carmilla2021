import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yellow_carmailla/models/animation_item.dart';
import 'package:yellow_carmailla/sign_in/price_button.dart';
import 'package:yellow_carmailla/src/flutter_icons.dart';
import 'package:yellow_carmailla/widgets%20copy/fade_slide.dart';
import 'package:yellow_carmailla/widgets%20copy/scale_animation.dart';

class CarDetail extends StatefulWidget {
  @override
  _CarDetailState createState() => _CarDetailState();
}

List<Map> colors = [
  {
    "name": "black",
    "color": Colors.black,
    "asset": "assets/carbig-black.png",
  },
  {
    "name": "green",
    "color": Colors.green,
    "asset": "assets/carbig-green.png",
  },
  {
    "name": "grey",
    "color": Colors.grey,
    "asset": "assets/carbig-grey.png",
  },
  {
    "name": "purple",
    "color": Colors.purple,
    "asset": "assets/carbig-purple.png",
  },
  {
    "name": "red",
    "color": Colors.red,
    "asset": "assets/carbig.png",
  },
];

class _CarDetailState extends State<CarDetail>
    with SingleTickerProviderStateMixin {
  // Animation setups
  late AnimationController animationController;
  late Animation animation;
  List<AnimationItem> animationItems = [];

  // Keep track of selected car index;
  int selectedIndex = 0;
  // setup animations
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    for (int i = 0; i < 10; i++) {
      animationItems.add(
        AnimationItem(
          id: "slide-${i + 1}",
          entry: 30 * (i + 1),
          entryDuration: 250,
          visible: false,
        ),
      );
    }
    animation = Tween<double>(begin: 0, end: 300).animate(animationController)
      ..addListener(() {
        setState(() {
          animationItems = updateVisibleState(
            animationItems,
            animation.value,
          );
        });
      });
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0XFFF4F4FF,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: kToolbarHeight,
                      ),
                      // FadeSlide(
                      //   direction: getItemVisibility("slide-1", animationItems),
                      //   duration: getSlideDuration("slide-1", animationItems),
                      //   offsetY: 60.0,
                      //   offsetX: 0.0,
                      //   child: Row(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           animateTransition(context, CarsList());
                      //         },
                      //         child: Container(
                      //           height: 55.0,
                      //           width: 55.0,
                      //           decoration: BoxDecoration(
                      //             shape: BoxShape.circle,
                      //             border: Border.all(
                      //               color: Colors.grey,
                      //             ),
                      //           ),
                      //           child: Icon(
                      //             FlutterIcons.chevron_left_fea,
                      //           ),
                      //         ),
                      //       ),
                      //       Spacer(),
                      //       GestureDetector(
                      //         onTap: () {},
                      //         child: Container(
                      //           height: 55.0,
                      //           width: 55.0,
                      //           decoration: BoxDecoration(
                      //             shape: BoxShape.circle,
                      //             border: Border.all(
                      //               color: Colors.grey,
                      //             ),
                      //           ),
                      //           // child: Icon(
                      //           //   MIcon.riMenu2Line,
                      //           // ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 50.0,
                      ),
                      FadeSlide(
                        direction: getItemVisibility("slide-2", animationItems),
                        duration: getSlideDuration("slide-2", animationItems),
                        offsetY: 60.0,
                        offsetX: 0.0,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "BMW 8 Series Coupe\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.0,
                                  color: Color(0xFF333333),
                                ),
                              ),
                              TextSpan(
                                text: "Starts from \$201,967",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  height: 1.7,
                                  fontSize: 20.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Expanded(
                        // Lets create a list of all car image colors
                        child: AnimatedSwitcher(
                          // This switcher doesnt work, flutter cant
                          // understand the child change without a key property here
                          // I will include a link to a video talking more about keys
                          duration: Duration(milliseconds: 500),
                          child: ScaleAnimation(
                            key: ValueKey(colors[selectedIndex]["asset"]),
                            duration:
                                getSlideDuration("slide-3", animationItems),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                colors[selectedIndex]["asset"],
                              ),
                            ),
                            direction:
                                getItemVisibility("slide-3", animationItems),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: FadeSlide(
                  duration: getSlideDuration("slide-4", animationItems),
                  direction: getItemVisibility("slide-4", animationItems),
                  offsetX: 0.0,
                  offsetY: 60.0,
                  child: Container(
                    height: 360.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 32.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _getTabItem("Inspire", true),
                            SizedBox(
                              width: 15.0,
                            ),
                            _getTabItem("Inform", true),
                            SizedBox(
                              width: 15.0,
                            ),
                            _getTabItem("Technical Data", true),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "Hello there, thank you for coming here, please dont forget to subscribe and like this video if you learnt something from it",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 16.0,
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Divider(),
                        SizedBox(height: 15.0),
                        Row(
                          children: colors.map((color) {
                            int index = colors.indexOf(color);
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  // Change selected index
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                height: 35.0,
                                width: 35.0,
                                margin: EdgeInsets.only(
                                  right: 10.0,
                                ),
                                decoration: BoxDecoration(
                                  color: color["color"],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 4.0,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(
                                  12.0,
                                ),
                              ),
                              child: Icon(
                                FlutterIcons.heart_fea,
                              ),
                            ),
                            SizedBox(width: 20.0),
                            // Expanded(
                            //   child: Container(
                            //     width: MediaQuery.of(context).size.width * .7,
                            //     decoration: BoxDecoration(
                            //       color: Theme.of(context).primaryColor,
                            //       borderRadius: BorderRadius.circular(24.0),
                            //     ),
                            //     child: FlatButton(
                            //       padding: EdgeInsets.symmetric(
                            //         vertical: 22.0,
                            //       ),
                            //       onPressed: () {},
                            //       child: Text(
                            //         "Checkout",
                            //         style: TextStyle(
                            //           color: Colors.white,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            price_button(
                                text: 'Checkout',
                                color: Theme.of(context).primaryColor,
                                textColor: Colors.white,
                                onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _getTabItem(String text, bool isActive) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: TextStyle(
          color: isActive ? Color(0xFF333333) : Colors.black.withOpacity(.5),
          fontSize: isActive ? 18.0 : 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      isActive
          ? Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 4.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: isActive ? Colors.transparent : Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          : SizedBox.shrink()
    ],
  );
}
