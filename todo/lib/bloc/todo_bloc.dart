import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_event.dart';

import 'todo_state.dart';

class BlocTodo extends Bloc<TodoEvent, TodoState> {
  BlocTodo() : super() {}
}
