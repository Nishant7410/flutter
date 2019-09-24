import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World App"),
        ),
        body: Material(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Text(
              "Your lucky Number is ${generateluckynumber()}",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  int generateluckynumber() {
    var random = Random();
    int number = random.nextInt(20);
    return number;
  }
}
