import 'package:carch/features/increment/domain/usecases/decrement_counter_usecase.dart';
import 'package:carch/features/increment/domain/usecases/get_counter_usecase.dart';
import 'package:carch/features/increment/domain/usecases/increment_counter_usecase.dart';
import 'package:carch/features/increment/domain/usecases/reset_counter_usecase.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final GetCounterUsecase getCounterUseCase;
  final IncrementCounterUsecase incrementCounterUseCase;
  final DecrementCounterUseCase decrementCounterUseCase;
  final ResetCounterUseCase resetCounterUseCase;

  // Counter is now an observable variable with Rx<int>
  RxInt counter = 0.obs;

  CounterController({
    required this.getCounterUseCase,
    required this.incrementCounterUseCase,
    required this.decrementCounterUseCase,
    required this.resetCounterUseCase,
  }) {
    // Initialize the counter with the current value
    counter.value = getCounterUseCase.call().value;
  }

  // Increment the counter
  void increment() {
    incrementCounterUseCase.call();
    counter.value = getCounterUseCase.call().value;
  }

  // Decrement the counter
  void decrement() {
    decrementCounterUseCase.call();
    counter.value = getCounterUseCase.call().value;
  }

  // Reset the counter
  void reset() {
    resetCounterUseCase.call();
    counter.value = getCounterUseCase.call().value;
  }
}
