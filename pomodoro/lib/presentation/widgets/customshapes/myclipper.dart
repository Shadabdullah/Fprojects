import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height); // Start at the bottom-left corner
    path.lineTo(0, 50); // Draw line to top-left corner
    path.quadraticBezierTo(0, 0, 50, 0); // Draw curve to top-left
    path.lineTo(size.width - 50, 0); // Draw line to top-right
    path.quadraticBezierTo(
        size.width, 0, size.width, 50); // Draw curve to top-right
    path.lineTo(size.width, size.height); // Draw line to bottom-right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
