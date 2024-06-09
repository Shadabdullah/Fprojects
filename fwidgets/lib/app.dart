import 'package:flutter/material.dart';
import 'package:fwidgets/basicWidgets/basic.dart';

class FwidgetsApp extends StatelessWidget {
  const FwidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const BasicWidgets(),
    );
  }
}
