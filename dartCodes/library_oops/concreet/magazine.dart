import '../constants/status_enum.dart';
import '../interface/library_item.dart';
import '../mixins/trackable.dart';

class Magazine with Trackable implements LibraryItems {
  final String magazineAuthor;
  final String magazineTitle;

  Magazine({required this.magazineAuthor, required this.magazineTitle});

  @override
  void checkOut() {}

  @override
  ItemStatus getStatus() {
    throw UnimplementedError();
  }

  @override
  String getTitle(String formateString) {
    throw UnimplementedError();
  }

  @override
  void returnItem() {}
}
