import 'package:flutter/material.dart';
import 'package:flutterui/Todo/components/appbar.dart';
import 'package:flutterui/Todo/utils/constants/colors.dart';
import 'package:flutterui/Todo/widgets/customshapes/dotted.dart';

class TodoHomePage extends StatelessWidget {
  const TodoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: primaryDark, // Set background color to black
      width: double.infinity,
      child: CustomPaint(
        painter: DottedPainter(),
        child: Column(
          children: [
            // Heder Row
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: primaryGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TopAppBar()),
            ),
            //Main Row which will container Three Columns
            const Row(
              children: [
                Column(
                  children: [],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
