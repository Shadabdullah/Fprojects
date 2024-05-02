import 'package:blocapp/cubitapp/cubit/counter_cubit.dart';
import 'package:blocapp/cubitapp/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitApp extends StatelessWidget {
  const CubitApp({Key? key}) : super(key: key); // Fixed key parameter

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch:
                Colors.deepPurple, // Fixed seedColor to primarySwatch
          ),
          useMaterial3: true,
        ),
        home: const CounterCubitHomePage(),
      ),
    );
  }
}

class CounterCubitHomePage extends StatelessWidget {
  const CounterCubitHomePage({Key? key})
      : super(key: key); // Fixed key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .colorScheme!
            .background, // Fixed inversePrimary to background
        title: const Text("Bloc"),
      ),
      body: BlocListener<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state.wasIncremented) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(milliseconds: 1),
                content: Text("Incremented")));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("decremented")));
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed button this many times'),
              SizedBox(height: 20),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(
                    '${state.counterValue}', // Display the value from the state
                    style: Theme.of(context)
                        .textTheme
                        .headline6, // Fixed titleMedium to headline6
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    child: Icon(Icons.remove),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
