import '../entities/conter_entity.dart';
import '../repositories/counter_repository.dart';

class IncrementCounterUsecase {
  final CounterRepository _counterRepository;

  IncrementCounterUsecase(this._counterRepository);

  void call() async {
    final counter = _counterRepository.getCounter();
    _counterRepository.setCounter(CounterEntity(counter.value + 1));
  }
}
