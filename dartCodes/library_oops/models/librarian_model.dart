import 'book_model.dart';

class LibrarianModel {
  final String name;
  final int id;
  List<BookModel>? addedBooks;
  LibrarianModel({required this.name, required this.id, this.addedBooks});
}
