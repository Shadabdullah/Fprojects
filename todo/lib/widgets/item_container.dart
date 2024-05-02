import 'package:flutter/material.dart';
import 'package:todo/widgets/homepage_categoryicon.dart';

import '../models/todo_model.dart';

class ItemContainer extends StatelessWidget {
  final Todo todo;

  const ItemContainer({required this.todo, super.key});

  // final Map<String,IconData> iconsMap = [''];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]!))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HomePageCategoryIcon(categoryName: todo.category),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                todo.title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                todo.time,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
                fillColor: MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                checkColor: const Color(0xFF240A34),
                value: todo.isDone == 1,
                activeColor: Colors.redAccent,
                side: const BorderSide(color: Colors.black87),
                onChanged: (newValue) {}),
          ),
        ],
      ),
    );
  }
}
