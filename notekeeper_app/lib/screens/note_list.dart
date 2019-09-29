import 'package:flutter/material.dart';
import 'package:notekeeper_app/screens/note_detail.dart';

class Notelist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NotelistState();
  }
}

class NotelistState extends State<Notelist> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigatetodetail('Add Note');
          },
          tooltip: 'Add Note',
          child: Icon(Icons.add)),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Icon(Icons.keyboard_arrow_right)),
              title: Text('Dummy Title', style: titleStyle),
              subtitle: Text(
                'Dummy Date',
              ),
              trailing: Icon(Icons.delete, color: Colors.grey),
              onTap: () {
                navigatetodetail('Edit Note');
              },
            ));
      },
    );
  }
  void navigatetodetail(String title)
  {
Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Notedetail(title);
            }));
  }
}
