import 'dart:async';
import 'package:bloc/bloc.dart';

void main() async {
  final bloc = CounterBloc();
  final StreamSubscription<int> streamSubscription = bloc.stream.listen(print);

  // Wait for a short delay before dispatching the first event
  await Future.delayed(Duration(milliseconds: 100));

  bloc.add(
      CounterEvent.increment); // Dispatch the increment event after a delay

  await Future.delayed(Duration(seconds: 2));

  await streamSubscription.cancel();
  await bloc.close();
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
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
