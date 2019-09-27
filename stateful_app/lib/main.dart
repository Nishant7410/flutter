import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Stateful App Example",
        home:
            favoritecity() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class favoritecity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return favoritecitystate();
  }
}

class favoritecitystate extends State<favoritecity> {
  String cityname = "";
  var currency = ["Rupees", "Dollar", "Pounds", "Others"];
  var currentitemselect = "Rupees";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stateful app Example")),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userinput) {
                setState(() {
                  cityname = userinput;
                });
              },
            ),
            DropdownButton<String>(
              items: currency.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                    value: dropDownStringItem, child: Text(dropDownStringItem));
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this.currentitemselect = newValueSelected;
                });
              },
              value: currentitemselect,
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your best city is $cityname",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }
}
