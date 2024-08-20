import 'package:carch/features/increment/domain/entities/conter_entity.dart';

abstract class CounterRepository {
  CounterEntity getCounter();
  void setCounter(CounterEntity counter);
}
