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
                ]),
                FlightImage(),
                FlightBookbutton()
              ],
            )));
  }
}

class FlightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(image: assetImage, width: 300.0, height: 250.0);
    return Container(margin: EdgeInsets.only(top: 50.0), child: image);
  }
}

class FlightBookbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 20.0),
        width: 220.0,
        height: 50.0,
        child: RaisedButton(
          color: Colors.deepOrangeAccent,
          child: Text("Flight Book Button",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          elevation: 6.0,
          onPressed: () => BookFlight(context),
        ));
  }

  Widget BookFlight(BuildContext context) {
    var alertdialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a Pleasant flight"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertdialog);
    return null;
  }
}
