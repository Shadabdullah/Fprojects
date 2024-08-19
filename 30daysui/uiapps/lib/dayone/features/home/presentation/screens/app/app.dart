import 'package:flutter/material.dart';

void dayOne() {
  runApp(const DayOneApp());
}

class DayOneApp extends StatelessWidget {
  const DayOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "HomePage",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
