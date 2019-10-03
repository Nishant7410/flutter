import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_database/models/note.dart';

class DatabaseHelper
{
  static DatabaseHelper _databasehelper;
  static Database _database;
  String noteTable='note_table';
  String colId='id';
  String colTitle='title';
  String colDescription='description';
  String colPriority='priority';
  String colDate='date';  
  DatabaseHelper._createInstance();
  factory DatabaseHelper(){
    if(_databasehelper==null)
    {
    _databasehelper=DatabaseHelper._createInstance();
    }
    return _databasehelper;
  }
  Future<Database> get database async{
    if(_database==null)
    {
      _database=await initializeDatabase();
    }
    return _database;
  }
  Future<Database>initializeDatabase() async{
    Directory directory=await getApplicationDocumentsDirectory();
    String path=directory.path+'notes.db';
  var notedatabase= await openDatabase(path,version: 1,onCreate: _createDb);
  return notedatabase;
  }
  
  void _createDb(Database db,int newversion) async{
  await db.execute('CREATE TABLE $noteTable($colId INTEGER PRIMARY KEY ARGUMENT, $colTitle TEXT, $colDescription TEXT, $colPriority INTEGER, $colDate TEXT)');
  }

  //Fetch
  Future<List<Map<String ,dynamic>>> getNoteMapList() async{
    Database db=await this.database;
      var result  = await db.rawQuery('SELECT * FROM $noteTable order by $colPriority ASC');
      //var result=await db.query(noteTable,orderBy: '$colPriority ASC');
      return result;
  }

  //Insert
  Future<int> insertNote  (Note note) async{
    Database db=await this.database;
    var result=await db.insert(noteTable, note.tomap());
    return result;
  }

//update
Future<int>UpdateNote(Note note) async{
var db=await this.database;
var result=await db.update(noteTable,note.tomap(),where: '$colId = #',whereArgs: [note.id]);
return result;
}

//Delete
Future<int>deleteNote(int id) async{
    var db=await this.database;
    var result=await db.rawDelete('DELETE FROM $noteTable WHERE $colId=$id');
    return result;
}

//getcount number of object
Future<int>getcount() async{
  Database db=await this.database;
  List<Map<String,dynamic>> x=await db.rawQuery('SELECT COUNT(*) FROM $noteTable');
  int result=Sqflite.firstIntValue(x);
  return result;
  }
}