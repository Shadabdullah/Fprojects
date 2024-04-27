import 'dart:ui';

import 'package:assignments/ch2/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Assignment());
}

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: Ch2Home());
  }
}
