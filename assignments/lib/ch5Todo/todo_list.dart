import 'package:assignments/ch5Todo/add_todo.dart';
import 'package:assignments/ch5Todo/cubit/todo_cubit.dart';
import 'package:assignments/ch5Todo/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: const Text('TodoList'),
      ),
      body: BlocBuilder<TodoCubit, List<Todo>>(builder: (context, todos) {
        return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(todo.name),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddTodoPage()));
          // Navigator.pushNamed(context, '/add_todo');
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
