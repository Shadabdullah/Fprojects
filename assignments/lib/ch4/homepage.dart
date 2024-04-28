import 'package:assignments/ch4/bloc/counter_bloc.dart';
import 'package:assignments/ch4/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Ch4Home extends StatelessWidget {
  const Ch4Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterbloc = BlocProvider.of<CounterBloc>(context);
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
            child: BlocBuilder<CounterBloc, int>(builder: (context, counter) {
          return Text(
            "$counter",
            style: TextStyle(
                color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
          );
        })),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SeconPageCh4()));
          },
          backgroundColor: Colors.green[300],
          child: Icon(Icons.navigate_next),
        ));
  }
}
