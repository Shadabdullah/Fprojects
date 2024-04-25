import 'package:flutter/material.dart';
import 'package:sqdata/screens/homepage.dart';

void main() {
  runApp(const Sqdata());
}

class Sqdata extends StatelessWidget {
  const Sqdata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomePage());
  }
}
