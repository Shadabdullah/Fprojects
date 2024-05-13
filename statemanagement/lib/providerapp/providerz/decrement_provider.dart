import 'package:flutter/material.dart';

class DecrementProvider extends ChangeNotifier {
  int gross = 100;

  get getGross {
    return gross;
  }

  void decrement(int decBy) {
    gross -= decBy;

    gross = gross < 0 ? gross + 100 : gross;
    notifyListeners();
  }
}
