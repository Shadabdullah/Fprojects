import 'package:bloc/bloc.dart';

void main() {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
      default:
    }
  }
}

enum CounterEvent { increment, decrement }
