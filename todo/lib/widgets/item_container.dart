import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/bloc/todo_bloc.dart';
import 'package:todo/bloc/todo_event.dart';
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
      child: Slidable(
        startActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: (context) {
              if (todo.id != null) {
                BlocProvider.of<BlocTodo>(context)
                    .add(DeleteTodo(id: todo.id!));
              }
            },
            icon: Icons.delete,
            backgroundColor: Colors.red[300]!,
          ),
        ]),
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
                      decorationThickness: 3.0,
                      decorationColor: Colors.black,
                      decoration:
                          todo.isDone == 1 ? TextDecoration.lineThrough : null,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  todo.time,
                  style: TextStyle(
                      decorationThickness: 3.0,
                      decorationColor: Colors.black,
                      decoration:
                          todo.isDone == 1 ? TextDecoration.lineThrough : null,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )
              ],
            ),
            Transform.scale(
              scale: 1.5,
              child: Checkbox(
                  fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                    // If checkbox is checked, fill color is purple, else it's white
                    if (states.contains(MaterialState.selected)) {
                      return const Color(
                          0xFF240A34); // Purple color when checked
                    }
                    return Colors.white; // White color when unchecked
                  }),
                  checkColor: Colors.white,
                  value: todo.isDone == 1,
                  onChanged: (newValue) {
                    BlocProvider.of<BlocTodo>(context)
                        .add(UpdateTodo(id: todo.id!, isDone: todo.isDone));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
