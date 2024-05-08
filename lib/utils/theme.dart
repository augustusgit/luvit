import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../constant/color_constants.dart';


class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: bgColor, elevation: 0),
    scaffoldBackgroundColor: bgColor,
    primaryColor: secondaryColor,//const Color(0xFFFF006B),
    dialogBackgroundColor: secondaryColor,
    primaryTextTheme: TextTheme(titleLarge: primaryTextStyle(color: Colors.white), labelSmall: primaryTextStyle(color: Colors.white)),
    canvasColor: secondaryColor,
  );

}
