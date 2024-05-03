import 'package:bloc/bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, false));

  void increment() =>
      emit(CounterState(counterValue: state.counterValue + 1, true));

  void decrement() =>
      emit(CounterState(counterValue: state.counterValue - 1, false));
}
