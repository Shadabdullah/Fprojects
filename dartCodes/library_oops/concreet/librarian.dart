import '../abstracts/person.dart';
import '../interface/library_item.dart';

class Librarian extends Person {
  Librarian({required super.id, required super.name});

  void addItem(LibraryItems item) {
    print('item added $item');
  }

  @override
  void register() {}
}
