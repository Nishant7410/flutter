import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Text(
          "Hello flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
