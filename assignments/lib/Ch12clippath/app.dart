import 'package:assignments/Ch12clippath/chip.dart';
import 'package:flutter/material.dart';

class ClipApp extends StatelessWidget {
  const ClipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: ChipPract());
  }
}
