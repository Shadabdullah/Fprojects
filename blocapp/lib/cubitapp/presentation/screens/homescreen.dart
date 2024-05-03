import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dart/cubit.dart';
import '../../logic/cubit/counter_state.dart';

class CounterCubitHomePage extends StatelessWidget {
  // ignore: use_super_parameters
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
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(milliseconds: 1),
                content: Text("Incremented")));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("decremented")));
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed button this many times'),
              const SizedBox(height: 20),
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
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).decrement();
                    },
                    child: const Icon(Icons.remove),
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
