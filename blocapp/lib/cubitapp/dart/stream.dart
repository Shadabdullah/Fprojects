Stream<int> boatStream() async* {
  for (int i = 0; i < 10; i++) {
    print('SENT boat no. ${i.toString()}');

    await Future.delayed(const Duration(seconds: 2));

    yield i;
  }
}

void main(List<String> args) async {
  Stream<int> stream = boatStream();

  stream.listen((event) {
    print('ARRIVED boat no . $event');
  });
}
