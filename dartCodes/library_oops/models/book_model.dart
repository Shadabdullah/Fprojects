import '../constants/status_enum.dart';

class BookModel {
  final String title;

  final String author;

  final DateTime publishDate;

  ItemStatus status;

  BookModel(
      {required this.title,
      required this.author,
      required this.publishDate,
      this.status = ItemStatus.available});
}
