import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}

void main() {
  final counter = CounterCubit();

  print('show Initial State ${counter.state}');
  counter.increment();
  print('current state of counter ${counter.state}');
  counter.decrement();
  print('current state of counter ${counter.state}');
  counter.increment();
  print('current state of counter ${counter.state}');
  counter.decrement();
  print('current state of counter ${counter.state}');
  counter.increment();
  print('current state of counter ${counter.state}');
  counter.decrement();
  print('current state of counter ${counter.state}');
  counter.increment();
  print('current state of counter ${counter.state}');
}
