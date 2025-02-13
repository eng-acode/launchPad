import 'package:flutter/material.dart';
import 'board.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LaunchPad",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff333333),
          appBar: AppBar(
            backgroundColor: Color(0xff333333),
            title: Text(
              "LaunchPad",
              style: TextStyle(
                fontFamily: "Pacifico",
                color: Colors.white,
              ),
            ),
          ),
          body: HomePage(),
          // body: Board(),
        ),
      ),
    );
  }
}
