class Fraction {
  final int _numerator;
  final int _denominator;
  late final double _rational;
  Fraction(int this._numerator, int this._denominator) {
    _rational = _numerator / _denominator;
  }

  double rational() {
    return this._rational;
  }
}

void main() {
  Fraction result = Fraction(5, 15);

  double ans = result.rational();
  print(result.runtimeType);
  print(ans);
}
