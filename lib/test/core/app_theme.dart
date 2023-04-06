import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import 'app_color.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    //ThemeData(
    //         appBarTheme: AppBarTheme(
    //           color: AppColor.lightOrange
    //         ),
    //         fontFamily: "PlayfairDisplay",
    //         textTheme:  const TextTheme(
    //             displayMedium: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 22,
    //                 color: AppColor1.black),
    //             bodyMedium:TextStyle(
    //                 height: 2,
    //                 color: AppColor1.grey,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 14)),
    //         primarySwatch: Colors.blue,
    //       ),
  textTheme:  const TextTheme(
              displayMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: AppColor1.black),
              bodyMedium:TextStyle(
                  height: 2,
                  color: AppColor1.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14)),

    fontFamily: "PlayfairDisplay",
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColor.lightBlack,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
