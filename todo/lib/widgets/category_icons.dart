import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const CategoryIcon({required this.icon, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            icon,
            color: Colors.grey[800],
          ),
        ));
  }
}
