import '../repositories/counter_repository.dart';

import '../entities/conter_entity.dart';

class ResetCounterUseCase {
  final CounterRepository _counterRepository;

  ResetCounterUseCase(this._counterRepository);

  void call() async {
    _counterRepository.setCounter(CounterEntity(0));
  }
}
