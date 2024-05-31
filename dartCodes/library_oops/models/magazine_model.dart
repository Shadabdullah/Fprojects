import '../constants/status_enum.dart';

class MagazineModel {
  final String title;

  final String author;

  final DateTime publishDate;

  ItemStatus status;

  MagazineModel(
      {required this.title,
      required this.author,
      required this.publishDate,
      this.status = ItemStatus.available});
}
