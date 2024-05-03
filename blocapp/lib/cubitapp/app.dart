import 'package:blocapp/cubitapp/presentation/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/cubit/counter_cubit.dart';

class CubitApp extends StatelessWidget {
  const CubitApp({Key? key}) : super(key: key); // Fixed key parameter

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CounterCubitHomePage(),
      ),
    );
  }
}
