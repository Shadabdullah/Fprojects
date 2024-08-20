import 'package:carch/features/increment/domain/entities/conter_entity.dart';

import '../repositories/counter_repository.dart';

class GetCounterUsecase {
  final CounterRepository _counterRepository;

  GetCounterUsecase(this._counterRepository);

  CounterEntity call() {
    return _counterRepository.getCounter();
  }
}
