import 'package:assignments/ch3/cubit/counter_cubit.dart';
import 'package:assignments/ch3/homepage.dart';
import 'package:assignments/ch4/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Assignment());
}

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: Ch4HomePage());
  }
}
