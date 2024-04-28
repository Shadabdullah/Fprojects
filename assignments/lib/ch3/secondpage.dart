import 'package:assignments/ch3/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green[300],
            foregroundColor: Colors.green[300],
            onPressed: () {
              bit.increment();
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            tooltip: 'increment',
          ),
          SizedBox(
            height: 40,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green[300],
            foregroundColor: Colors.green[300],
            onPressed: () {
              bit.decrement();
            },
            tooltip: 'Decrement',
            child: Icon(
              Icons.minimize,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
