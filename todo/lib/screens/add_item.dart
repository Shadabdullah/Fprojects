import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/todo_bloc.dart';
import 'package:todo/bloc/todo_event.dart';
import 'package:todo/database/database_helper.dart';
import 'package:todo/models/todo_model.dart';
import 'package:todo/widgets/category_icons.dart';

class AddItems extends StatefulWidget {
  AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  void categoyFunction(String category) {
    setState(() {
      categoryHandler = category;
    });
  }

  String categoryHandler = '';

  final TextEditingController titleController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController timeController = TextEditingController();

  final TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFF1F5F9),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black,
              icon: const Icon(Icons.close),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF240A34),
        title: const Text(
          'ADD NEW ITEM',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Task Title',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ),
              TextField(
                controller: titleController,
                style: const TextStyle(color: Colors.black87),
                cursorColor: Colors.black87,
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87)),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(children: [
                const Text(
                  'Category',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CategoryIcon(
                          icon: Icons.dining_outlined,
                          color: Colors.yellow[200]!,
                          onPressed: categoyFunction,
                          categoryName: 'Dining',
                        ),
                        CategoryIcon(
                          icon: Icons.cast_for_education_outlined,
                          color: Colors.green[200]!,
                          onPressed: categoyFunction,
                          categoryName: 'Education',
                        ),
                        CategoryIcon(
                          icon: Icons.travel_explore_outlined,
                          color: Colors.orange[200]!,
                          onPressed: categoyFunction,
                          categoryName: 'Travel',
                        ),
                        CategoryIcon(
                          icon: Icons.local_grocery_store_outlined,
                          color: Colors.purple[200]!,
                          onPressed: categoyFunction,
                          categoryName: 'Grocery',
                        ),
                        CategoryIcon(
                          icon: Icons.health_and_safety_outlined,
                          color: Colors.pink[200]!,
                          onPressed: categoyFunction,
                          categoryName: 'Health',
                        ),
                      ],
                    ),
                  ),
                )
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'When',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10), // Add a SizedBox for spacing
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: dateController,
                          onTap: _selectDate,
                          style: const TextStyle(color: Colors.black87),
                          cursorColor: Colors.black87,
                          readOnly: true,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black87)),
                              suffixIcon: Icon(
                                size: 35,
                                Icons.calendar_today,
                                color: Colors.black87,
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                          width: 10), // Add a SizedBox for horizontal spacing
                      Expanded(
                        child: TextField(
                          controller: timeController,
                          onTap: _selectTime,
                          style: const TextStyle(color: Colors.black87),
                          cursorColor: Colors.black87,
                          readOnly: true,
                          decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black87)),
                              suffixIcon: Icon(
                                size: 35,
                                Icons.schedule_outlined,
                                color: Colors.black87,
                              ),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Notes',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 220,
                    child: TextField(
                      controller: noteController,
                      expands: true,
                      maxLines: null,
                      style: const TextStyle(color: Colors.black87),
                      cursorColor: Colors.black87,
                      decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          border: OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF240A34))),
                          onPressed: _addItems,
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        initialDate: DateTime.now(),
        lastDate: DateTime(2100));

    if (picked != null) {
      setState(() {
        dateController.text = picked.toString().split(' ')[0];
      });
    }
  }

  Future<void> _selectTime() async {
    TimeOfDay? _pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (_pickedTime != null) {
      String time = formattedTime(_pickedTime);
      timeController.text = time;
    }
  }

  String formattedTime(TimeOfDay time) {
    String hour = time.hourOfPeriod.toString().padLeft(2, '0');
    String minute = time.minute.toString().padLeft(2, '0');
    String period = time.period == DayPeriod.am ? 'AM' : 'PM';

    return '$hour:$minute $period';
  }

  void _addItems() {
    BlocProvider.of<BlocTodo>(context).add(AddTodo(
        todo: Todo(
            title: titleController.text,
            time: timeController.text,
            dueDate: dateController.text,
            category: categoryHandler,
            isDone: 0,
            note: noteController.text)));
    Navigator.of(context).pop();
  }
}
