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
    print('Database path: $databasePath');

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
      print('Error inserting todo: $e');
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
      print('Error getting list of todos: $e');
      return []; // Or throw an exception if appropriate
    }
  }
}
