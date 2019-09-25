import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                      child: Text("Spice jet",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic))),
                  Expanded(
                      child: Text("From mumbai to bangalore via delhi",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic)))
                ]),
                Row(children: <Widget>[
                  Expanded(
                      child: Text("Air India",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic))),
                  Expanded(
                      child: Text("From jaipur to goa",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic)))
                ])
              ],
            )));
  }
}
