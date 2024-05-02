import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_event.dart';
import 'package:todo/database/database_helper.dart';

import 'todo_state.dart';

class BlocTodo extends Bloc<TodoEvent, TodoState> {
  BlocTodo() : super(TodoInitialState()) {
    on<AddTodo>((emit, state) async {
      final db = DbHelper();
      final mes = await db.insertTodo(emit.todo);
      add(TodoFetched());
    });

    on<TodoFetched>((event, emit) async {
      final db = DbHelper();
      final todoList = await db.getListOfTodo();

      emit(TodoLoaded(todoList));
    });
  }
}
