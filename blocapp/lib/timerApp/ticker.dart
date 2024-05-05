class Ticker {
  Stream<int> tick(int ticks) {
    return Stream.periodic(const Duration(seconds: 1), (index) => index)
        .take(ticks);
  }
}
