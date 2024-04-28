// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// void main() {
//   runApp(Assignment());
// }
//
// class Assignment extends StatelessWidget {
//   const Assignment({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [BlocProvider(create: (_) => CounterBloc())],
//       child: MaterialApp(
//           theme: ThemeData(useMaterial3: true),
//           debugShowCheckedModeBanner: false,
//           home: Ch4Home()),
//     );
//   }
// }

//Todo[App]

import 'package:assignments/ch5Todo/add_todo.dart';
import 'package:assignments/ch5Todo/todo_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
