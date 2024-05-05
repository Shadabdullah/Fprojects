import 'package:blocapp/infiniteList/homepage.dart';
import 'package:flutter/material.dart';

class InFiApp extends StatelessWidget {
  const InFiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InfiniHomePage(),
    );
  }
}
