import '../constants/status_enum.dart';
import '../extensions/string_formate.dart';
import '../interface/library_item.dart';
import '../mixins/trackable.dart';

class Book with Trackable implements LibraryItems {
  final String author;
  final String title;

  Book({required this.author, required this.title});

  @override
  void checkOut() {
    print("Granted");
  }

  @override
  ItemStatus getStatus() {
    return ItemStatus.available;
  }

  @override
  String getTitle(String formateString) {
    return formateString.formateTitle();
  }

  @override
  void returnItem() {
    print('Thanks ! Clear your Due');
  }
}
