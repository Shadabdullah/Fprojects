import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pomodoro/productivity_button.dart';
import 'package:pomodoro/services/timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final CountDownTimer timer = CountDownTimer();

  @override
  Widget build(BuildContext context) {
    timer.startWork();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
        centerTitle: true,
        title: const Text(
          'Pomodoro',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ProductivityButton(
                      text: "Work",
                      color: Colors.orange[700] ?? Colors.orange,
                      onPressed: EmptyMethod,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                    child: ProductivityButton(
                      text: "Short Break",
                      color: Colors.orange[700] ?? Colors.orange,
                      onPressed: EmptyMethod,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                    child: ProductivityButton(
                      text: "Short Break",
                      color: Colors.orange[700] ?? Colors.orange,
                      onPressed: EmptyMethod,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: CircularPercentIndicator(
                radius: availableWidth / 2.5,
                lineWidth: 10,
                backgroundColor: Colors.orange[700] ?? Colors.orange,
                center: Text(
                  '4535',
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
              )),
              Row(
                children: [
                  Expanded(
                    child: ProductivityButton(
                      text: "Start",
                      color: Colors.orange[700] ?? Colors.orange,
                      onPressed: EmptyMethod,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                    child: ProductivityButton(
                      text: "Stop",
                      color: Colors.orange[700] ?? Colors.orange,
                      onPressed: EmptyMethod,
                    ),
                  ),
                ],
              )
            ],
          );
        }),
      ),
    );
  }

  void EmptyMethod() {}
}
