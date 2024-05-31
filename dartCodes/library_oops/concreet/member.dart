import '../abstracts/person.dart';

class Memebers extends Person {
  Memebers({required super.id, required super.name});

  @override
  void register() {
    print(this.name);
    print('Registred Successfully');
  }

  void borrowItem() {}
}
