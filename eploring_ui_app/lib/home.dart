import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Text("Flight",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.black,
            decoration: TextDecoration.none,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic
          )),
    ));
  }
}
