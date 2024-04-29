import 'package:assignments/ch7Persistence/sharedpref.dart';
import 'package:flutter/material.dart';

class ShApp extends StatelessWidget {
  const ShApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Ch7HomePage(),
    );
  }
}
