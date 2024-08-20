import 'package:carch/features/increment/data/models/counter_model.dart';

import '../../domain/entities/conter_entity.dart';
import '../../domain/repositories/counter_repository.dart';
import '../datasources/local/counter_local_datasource.dart';

class CounterRepositoryImpl extends CounterRepository {
  final CounterLocalDataSource localDataSource;
  CounterRepositoryImpl(this.localDataSource);

  @override
  CounterEntity getCounter() {
    final counter = localDataSource.getCounter();
    return CounterEntity(counter.value);
  }

  @override
  void setCounter(CounterEntity counter) {
    final counterModel = CounterModel(counter.value);
    localDataSource.setCounter(counterModel);
  }
}
