import '../models/todo_model.dart';

class TodoEvent {}

class TodoFetched extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;
  AddTodo({required this.todo});
}

class DeleteTodo extends TodoEvent {}

class UpdateTodo extends TodoEvent {}
