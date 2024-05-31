void main(List<String> args) {}

// interface

enum status {
  checkedOut,
  available,
  reserved,
}

class LibraryItem {
  void checkout() {}

  void returnItem() {}

  void getStatus() {}
}

mixin Trackable {}

abstract class Person {}

class Librarian extends Person {}

class Member extends Person {}

class Book implements LibraryItem {
  @override
  void checkout() {
    // TODO: implement checkout
  }

  @override
  void getStatus() {
    // TODO: implement getStatus
  }

  @override
  void returnItem() {
    // TODO: implement returnItem
  }
}

class Magazine implements LibraryItem {}
