import 'package:assignments/ch9Designpattern/dphomepage.dart';
import 'package:flutter/material.dart';

class DpApp extends StatelessWidget {
  const DpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData.dark(), home: DpHomePage());
  }
}
