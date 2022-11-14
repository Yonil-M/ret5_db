import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class DBNotas {
  Database? myDatabase;

  static final DBNotas db = DBNotas._();
  DBNotas._();

  Future<Database?> chekDatabase()  async{
    if (myDatabase != null) {
      return myDatabase;
    }

    myDatabase = await initDatabase();
    return myDatabase;
  }

 Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "NotaDB.db");
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database dbx, int version) async {
        await dbx.execute(
            "CREATE TABLE nota(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, fechaModificacion DATETIME)");
      },
    );
  }
}