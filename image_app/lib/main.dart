import 'package:flutter/material.dart';
import 'package:image_app/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI Widget",
      home: Home(),
    );
  }
}
