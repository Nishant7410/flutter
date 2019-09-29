import 'package:flutter/material.dart';
import 'package:notekeeper_app/screens/note_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:
          Notelist(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
