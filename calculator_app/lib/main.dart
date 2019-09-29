import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator app",
      debugShowCheckedModeBanner: false,
      home: SIForm(),
      theme: ThemeData(
          primaryColor: Colors.indigo,
          brightness: Brightness.dark,
          accentColor: Colors
              .indigoAccent), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SIFormState();
  }
}

class SIFormState extends State<SIForm> {
  var currency = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var selectedvalue = '';
  String cal = '';
  @override
  void initState() {
    super.initState();
    selectedvalue = currency[0];
  }

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //resizeToAvoidBottomPadding:false,
      appBar: AppBar(title: Text("Calculator")),
      body: Container(
          child: ListView(
        children: <Widget>[
          getimage(),
          Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: principalController,
                decoration: InputDecoration(
                    labelText: 'Principal',
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter Principal e.g 1200',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              )),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: roiController,
              decoration: InputDecoration(
                  labelText: 'Rate of Interest',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'In percent',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: termController,
                    decoration: InputDecoration(
                      labelText: 'Term',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Term in years',
                      // enabledBorder: BorderSide(
                      //   color: Colors.white,
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 25.0,
                ),
                Expanded(
                  child: DropdownButton<String>(
                    items: currency.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: selectedvalue,
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this.selectedvalue = newValueSelected;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.deepPurple,
                      child: Text("Calculate",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        setState(() {
                          this.cal = calculaterun();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.black,
                      child:
                          Text("Reset", style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        setState(() {
                          cal = '';
                          principalController.text = '';
                          roiController.text = '';
                          termController.text = '';
                          selectedvalue = 'Rupees';
                        });
                      },
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(this.cal, style: TextStyle(color: Colors.white)),
          )
        ],
      )),
    );
  }

  Widget getimage() {
    AssetImage assetImage = AssetImage('images/d1.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0);
    return Container(child: image, margin: EdgeInsets.all(50.0));
  }

  String calculaterun() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);
    double total_amount = principal + (principal * roi * term) / 100;
    String result =
        'After $term years, your investment will be worth $total_amount $selectedvalue';
    return result;
  }
}
