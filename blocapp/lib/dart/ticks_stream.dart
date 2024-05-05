import 'dart:async';

class Ticker {
  Stream<int> ticker(int ticks) {
    return Stream.periodic(const Duration(seconds: 1), (index) => index)
        .take(ticks);
  }
}

// void main() {
//   final stream = Ticker();
//
//   stream.ticker(20).listen((event) {
//     print(event);
//   });
// }

// void main() {
//   // Create a stream that emits a tick every second
//   final stream = Stream.periodic(const Duration(seconds: 1), (index) => index);
//
//   // Listen to the stream and print each tick
//   stream.take(5).listen((tick) {
//     print('Tick $tick');
//   });
// }

void main() {
  final List<int> items = [1, 2, 3, 4, 5];

  // Create a future that resolves after 2 seconds
  final delayedFuture = Future.delayed(Duration(seconds: 2));

  // Create a stream from the delayed future
  final stream = Stream.fromFuture(delayedFuture)
      .asyncExpand((_) => Stream.fromIterable(items));

  // Listen to the stream and print each item
  stream.listen((item) {
    print('Item: $item');
  });
}
