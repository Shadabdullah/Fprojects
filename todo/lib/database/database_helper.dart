import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/models/todo_model.dart';

class DbHelper {
  static const String createTableSql = '''
    CREATE TABLE todoTable (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT,
      time TEXT,
      dueDate TEXT,
      category TEXT,
      isDone INTEGER,
      note TEXT
    )
  ''';

  Future<Database> initializeDb() async {
    final String databasePath = await getDatabasesPath();

    return openDatabase(join(databasePath, 'todo.db'), version: 1,
        onCreate: (database, version) async {
      await database.execute(createTableSql);
    });
  }

  Future<int> insertTodo(Todo todo) async {
    try {
      final db = await initializeDb();
      return db.insert('todoTable', todo.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      // Handle any errors gracefully
      return -1; // Or throw an exception if appropriate
    }
  }

  Future<List<Todo>> getListOfTodo() async {
    try {
      final db = await initializeDb();
      final List<Map<String, dynamic>> maps = await db.query('todoTable');
      return List.generate(
        maps.length,
        (index) => Todo(
          id: maps[index]['id'],
          title: maps[index]['title'],
          time: maps[index]['time'],
          dueDate: maps[index]['dueDate'],
          category: maps[index]['category'],
          isDone: maps[index]['isDone'],
          note: maps[index]['note'],
        ),
      );
    } catch (e) {
      // Handle any errors gracefully
      return []; // Or throw an exception if appropriate
    }
  }

  Future<void> updateItem(int id, int isDone) async {
    final db = await initializeDb();
    isDone = isDone == 1 ? 0 : 1;
    await db.update('todoTable', {'isDone': isDone},
        where: 'id=?', whereArgs: [id]);
  }

  Future<void> deleteItem(int id) async {
    final db = await initializeDb();
    await db.delete('todoTable', where: 'id = ?', whereArgs: [id]);
  }
}
