import 'models/todo.dart';

abstract class TodoApi {
  const TodoApi();

  Stream<List<Todo>> getTodos();

  Future<void> saveTodo(Todo todo);

  Future<void> deleteTodo(String id);

  Future<int> clearTodos();

  Future<int> completeAll({required bool isCompleted});
  Future<void> close();
}

class TodoNotFoundException extends Exceptear {}
