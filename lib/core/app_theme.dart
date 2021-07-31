import 'package:flutter/material.dart';

ThemeData defaultTheme() => ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Color(0xFF4fe3c1),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Color(0xFF4fe3c1),
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        headline2: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ),
        button: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
