import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterui/Todo/utils/constants/colors.dart'; // Assuming this imports the colors

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust spacing

      children: [
        // Menu items
        const Expanded(
          flex: 1,
          child: Row(
            children: [
              _MenuItem(icon: Icons.home_outlined, text: 'Home'),
              SizedBox(width: 20), // Consistent spacing
              _MenuItem(icon: Icons.bar_chart_sharp, text: 'Statistics'),
              SizedBox(width: 20),
              _MenuItem(icon: Icons.add, text: 'Add'),
            ],
          ),
        ),

        // App logo or title
        Stack(
          children: [
            const Text(
              "T",
              style: TextStyle(
                color: primaryWhite,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Positioned(
              top: 14,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryPink,
                  borderRadius: BorderRadius.circular(100),
                ),
                width: 15,
                height: 15,
              ),
            ),
          ],
        ),

        // Search bar
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search_sharp),
              hintText: 'Search',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

// Reusable menu item widget
class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MenuItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 30),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }
}
