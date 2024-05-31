import 'book_model.dart';

class MemberModel {
  final String name;
  final int id;
  List<BookModel>? borrowedBooks;
  MemberModel({required this.name, required this.id, this.borrowedBooks});
}
