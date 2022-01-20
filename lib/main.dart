import 'package:flutter/material.dart';
import 'package:rentcar/HomePage/homepage.dart';

//import 'package:rentcar/Card/cards.dart';
//import 'package:rentcar/carscreen.dart';

//import 'package:rentcar/practice.dart';

//import 'package:rentcar/HomePage/homepage.dart';
//import 'package:rentcar/carscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
