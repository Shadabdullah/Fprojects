import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final String name;
  final int age;
  Person(this.name, this.age);

  @override
  List<Object?> get props => [name, age];
}

void main() {
  var persion1 = Person('Shad', 26);

  var persion2 = Person('Shad', 26);

  print(persion2 == persion1);
}
