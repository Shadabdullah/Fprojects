import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_event.dart';
import 'package:todo/database/database_helper.dart';

import 'todo_state.dart';

class BlocTodo extends Bloc<TodoEvent, TodoState> {
  BlocTodo() : super(TodoInitialState()) {
    on<AddTodo>((emit, state) async {
      final db = DbHelper();
      await db.insertTodo(emit.todo);
      add(TodoFetched());
    });

    on<TodoFetched>((event, emit) async {
      final db = DbHelper();
      final todoList = await db.getListOfTodo();

      emit(TodoLoaded(todoList));
    });

    on<UpdateTodo>((emit, state) {
      final db = DbHelper();
      db.updateItem(emit.id, emit.isDone);
      add(TodoFetched());
    });

    on<DeleteTodo>((emit, state) async {
      final db = DbHelper();
      await db.deleteItem(emit.id);
      add(TodoFetched());
    });
  }
}
