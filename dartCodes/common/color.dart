import 'dart:io';

void main(List<String> args) {
  var colors = ['white', 'white', 'white', 'white'];
  int correctAns = 2;
  tapped(colors, correctAns);
}

void tapped(List<String> colors, int correctAns) {
  stdout.write('Choose Correct options: ');
  String? selectedOption = stdin.readLineSync();

  while (selectedOption != null && correctAns != int.tryParse(selectedOption)) {
    stdout.write('Choose Correct options: ');
    selectedOption = stdin.readLineSync();

    if (selectedOption != null && correctAns == int.tryParse(selectedOption)) {
      colors[correctAns] = 'Green';
      for (var index = 0; index < colors.length; index++) {
        print('$index : ${colors[index]}');
      }
    } else if (selectedOption != null) {
      int? selectedIndex = int.tryParse(selectedOption);
      if (selectedIndex != null && selectedIndex < colors.length) {
        colors[correctAns] = 'Green';
        colors[selectedIndex] = 'Red';
        for (var index = 0; index < colors.length; index++) {
          print('$index : ${colors[index]}');
        }
      } else {
        print('Invalid option. Please enter a valid number.');
      }
    }
  }

  if (selectedOption != null) {
    int? indexz = int.tryParse(selectedOption);
    if (indexz != null) {
      print(
          '$correctAns ${correctAns.runtimeType}: $indexz ${indexz.runtimeType}');
      print(correctAns != indexz);
    }
  }
}
