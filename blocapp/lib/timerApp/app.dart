import 'package:blocapp/timerApp/screens/timer_homepage.dart';
import 'package:flutter/material.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: TimerPage(),
    );
  }
}
