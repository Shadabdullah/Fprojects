import 'package:assignments/ch4Bloc/bloc/counter_bloc.dart';
import 'package:assignments/ch4Bloc/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocApp extends StatelessWidget {
  const BlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CounterBloc())],
      child: MaterialApp(
          theme: ThemeData(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          home: Ch4Home()),
    );
  }
}
