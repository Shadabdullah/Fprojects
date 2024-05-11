import 'package:cleanarch/app0/core/utils/typedef.dart';

abstract class UsecaseWithParams<Type, Param> {
  const UsecaseWithParams();

  ResultFuture<Type> call(Param param);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();

  ResultFuture<Type> call();
}
