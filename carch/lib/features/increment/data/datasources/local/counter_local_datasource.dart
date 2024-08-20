import 'package:hive/hive.dart';

import '../../models/counter_model.dart';

abstract class CounterLocalDataSource {
  CounterModel getCounter();
  void setCounter(CounterModel counter);
}

class CounterLocalDataSourceImpl implements CounterLocalDataSource {
  final Box box;

  CounterLocalDataSourceImpl({required this.box});

  @override
  CounterModel getCounter() {
    final value = box.get('counter', defaultValue: 0);
    return CounterModel(value);
  }

  @override
  void setCounter(CounterModel model) {
    box.put('counter', model.value);
  }
}
