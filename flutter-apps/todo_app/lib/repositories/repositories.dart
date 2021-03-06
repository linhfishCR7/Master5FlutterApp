import 'package:sqflite/sqflite.dart';
import 'package:todo_app/repositories/db_connection.dart';

class Repository {
  DatabaseConnection _connection;

  Repository() {
    _connection = DatabaseConnection();
  }

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _connection.setDatabase();
    return _database;
  }

  save(table, data) async {
    var conn = await database;
    return await conn.insert(table, data);
  }

  getAll(table) async {
    var conn = await database;
    return await conn.query(table);
  }

  getById(String table, itemId) async {
    var conn = await database;
    return await conn.query(table, where: 'id=?', whereArgs: [itemId]);
  }
}
