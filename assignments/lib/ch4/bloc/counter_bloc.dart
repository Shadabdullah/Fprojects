import 'package:flutter_bloc/flutter_bloc.dart';

class CounterIncrement {}

class CounterBloc extends Bloc<CounterIncrement, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>((event, emit) {
      emit(state + 1);
    });
  }
}
