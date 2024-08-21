import 'package:carch/features/increment/domain/entities/conter_entity.dart';

import '../repositories/counter_repository.dart';

class DecrementCounterUseCase {
  final CounterRepository _counterRepository;

  DecrementCounterUseCase(this._counterRepository);

  Future<void> call() async {
    final counter = _counterRepository.getCounter();
    _counterRepository.setCounter(CounterEntity(counter.value - 1));
  }
}
