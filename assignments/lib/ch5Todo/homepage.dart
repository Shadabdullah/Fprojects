import 'package:assignments/ch5Todo/add_todo.dart';
import 'package:assignments/ch5Todo/cubit/todo_cubit.dart';
import 'package:assignments/ch5Todo/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => TodoCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const TodoList(),
          '/add-todo': (_) => const AddTodoPage(),
        },
      ),
    );
  }
}
