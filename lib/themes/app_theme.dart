
import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.orange;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primary
        primaryColor: primary,
        //Appbar color
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),

        textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
        )
      );
  
  

}