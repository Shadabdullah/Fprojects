import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    print('I am inside Incerment of Cubit $state');
    return emit(state + 1);
  }
}

class CounterCubit1 extends Cubit<int> {
  CounterCubit1(super.initialState);
}

Future<void> main() async {
  final cubit = CounterCubit();
  final subscription = cubit.stream.listen((event) {
    print('coming from first ${cubit.state}');
  }); //
  cubit.increment();

  cubit.increment();

  cubit.increment();
  cubit.increment();

  await Future.delayed(Duration.zero);

  cubit.increment();
  cubit.increment();
  await subscription.cancel();
  await cubit.close();
}
