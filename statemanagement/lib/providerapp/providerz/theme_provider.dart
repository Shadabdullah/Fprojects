import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Color mainColor = Colors.red[200]!;
  Color secondColor = Colors.green[200]!;
  bool isMainColorSelected = true;

  void changeThemeColor(bool isSelected) {
    isMainColorSelected = isSelected;
    mainColor = isSelected ? mainColor : secondColor;
    notifyListeners();
  }
}
