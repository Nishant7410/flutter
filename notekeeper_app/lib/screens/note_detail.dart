import 'package:flutter/material.dart';

class Notedetail extends StatefulWidget {
  String appbartitle;
  Notedetail(this.appbartitle);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NotedetailState(this.appbartitle);
  }
}

class NotedetailState extends State<Notedetail> {
  var priority = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController desController = TextEditingController();
  String appbar;
  NotedetailState(this.appbar);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return WillPopScope(
        onWillPop: () {
          movetolastScreen();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(appbar),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                movetolastScreen();
              },
            ),
          ),
          body: Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: DropdownButton(
                      items: priority.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      value: 'Low',
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: TextField(
                        controller: titleController,
                        style: textStyle,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            labelText: 'Title',
                            labelStyle: textStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: TextField(
                        controller: desController,
                        style: textStyle,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            labelText: 'Description',
                            labelStyle: textStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              color: Theme.of(context).primaryColorDark,
                              textColor: Theme.of(context).primaryColorLight,
                              child: Text(
                                'Save',
                                textScaleFactor: 1.5,
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                          ),
                          Container(width: 5.0),
                          Expanded(
                            child: RaisedButton(
                              color: Theme.of(context).primaryColorDark,
                              textColor: Theme.of(context).primaryColorLight,
                              child: Text(
                                'Delete',
                                textScaleFactor: 1.5,
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ))
                ],
              )),
        ));
  }

  void movetolastScreen() {
    Navigator.pop(context);
    ;
  }
}
