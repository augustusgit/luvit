import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/color_constants.dart';

class BottomNavigation extends StatefulWidget {


  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  var isSelected = 1;

  @override
  Widget build(BuildContext context) {
    Widget tabItem(var pos, var icon) {
      return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = pos;
          });
        },
        child: Container(
          width: 45,
          height: 45,
          alignment: Alignment.center,
          decoration: isSelected == pos ? BoxDecoration(shape: BoxShape.circle, color: blackColor) : BoxDecoration(),
          child: SvgPicture.asset(
            icon,
            width: 20,
            height: 20,
            color: isSelected == pos ? accentColor : bottomTextColor,
          ),
        ),
      );
    }

    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: 60,
          decoration: const BoxDecoration(
            // color: context.scaffoldBackgroundColor, //blurRadius: 5, spreadRadius: 1, offset: Offset(0, 3.0)
            boxShadow: [
              BoxShadow(color: blackColor, ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                tabItem(1, 'assets/icons/home.svg'),
                tabItem(2, 'assets/icons/pin.svg'),
                Container(width: 45,),
                tabItem(3, 'assets/icons/message.svg'),
                tabItem(4, 'assets/icons/user.svg'),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () {
              //
            },
            child: Image.asset('assets/icons/speaker.png'),
          ),
        )
      ],
    );
  }
}