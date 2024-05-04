import 'package:flutter/material.dart';
import 'package:flutterui/Todo/utils/constants/colors.dart';

class DottedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double dotRadius = 2;
    const double gap = 30; // Adjust the gap between dots here
    final Paint paint = Paint()..color = secondaryGrey;

    for (double x = 0; x < size.width; x += gap + dotRadius * 2) {
      for (double y = 0; y < size.height; y += gap + dotRadius * 2) {
        canvas.drawCircle(Offset(x, y), dotRadius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
