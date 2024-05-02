import '../models/todo_model.dart';

class TodoEvent {}

class TodoFetched extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;
  AddTodo({required this.todo});
}

class DeleteTodo extends TodoEvent {
  final int id;

  DeleteTodo({required this.id});
}

class UpdateTodo extends TodoEvent {
  final int id;
  final int isDone;
  UpdateTodo({required this.id, required this.isDone});
}
