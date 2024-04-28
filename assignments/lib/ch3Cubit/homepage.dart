import 'package:assignments/ch3/cubit/counter_cubit.dart';
import 'package:assignments/ch3/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Ch3Home extends StatefulWidget {
  Ch3Home({super.key});

  @override
  State<Ch3Home> createState() => _Ch3HomeState();
}

class _Ch3HomeState extends State<Ch3Home> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[200],
          title: const Text(
            'BLOC STATE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child: BlocBuilder<CounterCubit, int>(
                bloc: counterCubit,
                builder: (context, counter) {
                  return Text(
                    "$counter",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  );
                })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SecondPage()));
          },
          backgroundColor: Colors.green[300],
          child: Icon(Icons.navigate_next),
        ));
  }
}
