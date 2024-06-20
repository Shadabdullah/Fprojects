import 'package:test/test.dart';
import 'package:testing_app/models/favorite.dart';

void main() {
  group('Testing App Provider', () {
    var favorite = Favorites();
    test('A new Item should be Added', () {
      var number = 35;
      favorite.add(number);
      expect(favorite.items.contains(number), true);
      favorite.remove(number);
      expect(favorite.items.contains(number), false);
    });
  });
}
