class Periods {
  final int? id;
  final DateTime dateTime;
  final int sessionDuration;
  final int sessionCount;
  final int incompleteSession;

  Periods(this.id,
      {required this.sessionDuration,
      required this.dateTime,
      this.sessionCount = 0,
      this.incompleteSession = 0});
}

const sql = '''
CREATE TABLE SessionRecords (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dateTime TEXT NOT NULL,
    sessionDuration INTEGER NOT NULL,
    sessionCount INTEGER NOT NULL,
    incompleteSession INTEGER NOT NULL
);
''';
