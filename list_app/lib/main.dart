import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Exploring UI Widget",
        home: Scaffold(
          appBar: AppBar(title: Text("Basic List View")),
          body: getListview(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            tooltip: 'Add one more item',
          ),
        ));
  }
}

void showsnakbar(BuildContext context, String item) {
  var snackbar = SnackBar(
      content: Text("You just tapped $item"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () {},
      ));
  Scaffold.of(context).showSnackBar(snackbar);
}

//multi view list
List<String> getListElements() {
  var item = List<String>.generate(100, (counter) => "Item $counter");
  return item;
}

Widget getListview() {
  var listitem = getListElements();
  var listview = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listitem[index]),
        onTap: () {
          showsnakbar(context, listitem[index]);
        },
      );
    },
  );
  return listview;
}

//single view list
/*Widget getList() {
  var listview = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view !"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Landscape"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Landscape"),
      )
    ],
  );
  return listview;
}*/
