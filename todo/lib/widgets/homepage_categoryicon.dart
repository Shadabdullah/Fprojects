import 'package:flutter/material.dart';

class HomePageCategoryIcon extends StatelessWidget {
  final String categoryName;

  HomePageCategoryIcon({required this.categoryName, Key? key})
      : super(key: key);

  final Map<String, List<dynamic>> categoryData = {
    'Dining': [Icons.dining_outlined, Colors.yellow[200]],
    'Education': [Icons.cast_for_education_outlined, Colors.green[200]],
    'Travel': [Icons.travel_explore_outlined, Colors.orange[200]],
    'Grocery': [Icons.local_grocery_store_outlined, Colors.purple[200]],
    'Health': [Icons.health_and_safety_outlined, Colors.pink[200]],
  };

  @override
  Widget build(BuildContext context) {
    IconData icon = categoryData[categoryName]![0];
    Color color = categoryData[categoryName]![1];

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
      ),
    );
  }
}
