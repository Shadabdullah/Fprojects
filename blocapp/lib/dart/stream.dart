void main() async {
  final stream = countStream(10);
  int sum = await sumStream(stream);
  print(sum);
}

Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    print('inside countStream $i');
    yield i;
  }
}

Future<int> sumStream(Stream stream) async {
  print(stream);
  int sum = 0;

  await for (int value in stream) {
    print('inside sumStream $sum');
    sum += value;
  }

  return sum;
}
