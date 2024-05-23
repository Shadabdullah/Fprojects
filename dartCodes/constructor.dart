class PrivateExample {
  int a;
  PrivateExample._(this.a);

  factory PrivateExample(int value) {
    final int c = 3 * value;

    return PrivateExample._(c);
  }

  void printInstance() {
    print(this.a);
  }
}

void main() {
  final result = PrivateExample(5);
  result.printInstance();
}
