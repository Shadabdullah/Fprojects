import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String categoryName;
  final Color color;
  Function(String)? onPressed;

  CategoryIcon(
      {required this.icon,
      required this.color,
      required this.onPressed,
      required this.categoryName,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: () {
            onPressed?.call(categoryName);
          },
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
          ),
        ));
  }
}
