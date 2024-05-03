import 'package:flutter/material.dart';
import 'package:pomodoro/presentation/screens/home_screen.dart';

void main() {
  runApp(PomoDoroApp());
}

class PomoDoroApp extends StatelessWidget {
  const PomoDoroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: HomeScreen(),
    );
  }
}
