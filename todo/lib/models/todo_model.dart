class Todo {
  int? id;
  String title;
  String time;
  String dueDate;
  String category;
  int isDone;
  String note;

  Todo({
    this.id,
    required this.title,
    required this.time,
    required this.dueDate,
    required this.category,
    required this.isDone,
    required this.note,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'time': time,
      'dueDate': dueDate,
      'category': category,
      'isDone': isDone == 1 ? 1 : 0,
      'note': note,
    };
  }

  @override
  String toString() {
    return 'Todo{id: $id, title: $title, time: $time, dueDate: $dueDate, category: $category, isDone: $isDone, note: $note}';
  }
}
