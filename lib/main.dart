import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyColors myColors = MyColors();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: myColors.lightGrey,
        appBar: AppBar(
          backgroundColor: myColors.lightGrey,
          title: Text(
            "LaunchPad",
            style: TextStyle(
              fontFamily: "Pacifico",
              color: MyColors().white,
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

// Permanent Marker
