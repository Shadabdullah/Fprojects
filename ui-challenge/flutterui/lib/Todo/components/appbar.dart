import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterui/Todo/utils/constants/colors.dart'; // Assuming this imports the colors

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Menu items
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              _MenuItem(icon: CupertinoIcons.home, text: 'Home'),
              SizedBox(width: 30), // Consistent spacing
              _MenuItem(icon: Icons.bar_chart_sharp, text: 'Statistics'),
              SizedBox(width: 30),
              _MenuItem(icon: Icons.add, text: 'Add'),
            ],
          ),
        ),

        // App logo or title
        Expanded(
          child: Stack(
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
        ),

        // Search bar
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: secondaryGrey,
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// TextField(
//   decoration: InputDecoration(
//     filled: true,
//     fillColor: secondaryGrey,
//     suffixIcon: Icon(Icons.search_sharp),
//     hintText: 'Search',
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(15.0),
//       borderSide: BorderSide.none, // Remove border
//     ),
//   ),
// ),
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
        const SizedBox(width: 15),
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
