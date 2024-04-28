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

import 'package:assignments/ch5Todo/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: TodoHomePage());
  }
}
