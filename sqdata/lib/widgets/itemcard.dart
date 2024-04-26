import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String description;
  const ItemCard({required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[50],
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
