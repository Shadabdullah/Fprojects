import 'package:todo/models/todo_model.dart';

class TodoState {}

class TodoInitialState extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> list;
  TodoLoaded(this.list);
}
