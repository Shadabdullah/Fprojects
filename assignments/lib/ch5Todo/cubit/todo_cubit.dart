import 'package:assignments/ch5Todo/models/todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addItem(String title) {
    if (title.isEmpty) {
      addError('Title cant be empty');
      return;
    }

    final todo = Todo(title, DateTime.now());
    emit([...state, todo]);
  }
}
