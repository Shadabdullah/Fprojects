import 'package:assignments/ch4/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeconPageCh4 extends StatelessWidget {
  const SeconPageCh4({super.key});

  @override
  Widget build(BuildContext context) {
    final blocState = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green[300],
            foregroundColor: Colors.green[300],
            onPressed: () {
              blocState.add(CounterIncrement());
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
            onPressed: () {},
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
