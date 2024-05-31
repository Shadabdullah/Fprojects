enum ItemStatus { reserved, checkedOut, available }

mixin Trackable {
  ItemStatus status = ItemStatus.available;

  ItemStatus getStatus() => status;

  void checkOut() {
    if (status == ItemStatus.available) {
      status = ItemStatus.checkedOut;
      print("Nice Enjoy your title");
    } else {
      print("Item is not available for checkout.");
    }
  }

  void returnItem() {
    if (status == ItemStatus.checkedOut) {
      status = ItemStatus.available;
      print('Thanks clear your due  ');
    } else {
      print("Item is not checked out.");
    }
  }
}

class Book with Trackable {
  final String name;
  Book({required this.name});

  @override
  void checkOut() {
    super.checkOut();
  }

  @override
  void returnItem() {
    super.returnItem();
  }
}

void main(List<String> args) {
  Book book = Book(name: 'The God');

  book.checkOut();
  book.checkOut();
  book.returnItem();
  book.checkOut();
}
