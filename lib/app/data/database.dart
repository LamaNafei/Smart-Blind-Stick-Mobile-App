import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';

class SqlDb {

  static Database? _database;

  Future<Database?> get db async {
    if (_database != null) {
      return _database;
    } else {
      _database = await initDatabase();
    }
  }

  initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'Smartdb.db');
    return await openDatabase(path,
        onCreate: Create, version: 3, onUpgrade: upgrade);
  }

  upgrade(Database db, int oldVersion, int newVersion){
  }
  Future Create(Database db, int version) async {
    await db.execute('''
     CREATE TABLE data (
            "usersId" STRING NOT NULL,
            "Image" STRING NOT NULL,
            "Name" STRING NOT NULL,
            FOREIGN KEY (usersId) REFERENCES Users (usersId) 
          ''');

    await db.execute('''
    CREATE TABLE Users (
            usersId STRING PRIMARY KEY,
          ''');

    print("DATABASE CREATED");
  }

  readData(String sql) async{
    Database? myDb = await db;
    List<Map> response = await myDb!.rawQuery(sql);
    return response;
  }
  deleteData(String sql) async{
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
  insertData(String sql) async{
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
  updateData(String sql) async{
    Database? myDb = await db;
    int response = await myDb!.rawUpdate(sql);
    return response;
  }
}