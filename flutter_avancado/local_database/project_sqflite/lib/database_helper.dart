import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  //Padrão Singleon

  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;
  Future<Database> get database async {
    _database ??= await _initDataBase();
    return _database!;
  }

  Future<Database> _initDataBase() async {
    String path = await getDatabasesPath();
    String pathWithName = "$path/database.db";

    return await openDatabase(
      pathWithName,
      version: 1,
      onCreate: (Database db, int version) async {
        db.execute(
          'create table texts (id integer primary key autoincrement, title text)',
        );
      },
    );
  }

  Future insertText(String text) async {
    Database db = await instance.database;
    db.insert('texts', {'title': text});
  }

  Future<String> getText() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> response = await db.query('texts');
    if (response.isNotEmpty) {
      return response.last['title'];
    } else {
      return "Nenhum dado encontrado";
    }
  }
}
