import 'package:flutter/material.dart';

class Ch2Home extends StatelessWidget {
  const Ch2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: Text(
          'BASIC STATE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
