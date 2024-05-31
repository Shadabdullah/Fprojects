import '../constants/status_enum.dart';

abstract class LibraryItems {
  ItemStatus getStatus();

  void checkOut();

  void returnItem();

  String getTitle();
}
