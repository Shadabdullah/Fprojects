import 'package:flutter/material.dart';
import 'package:todo/widgets/category_icons.dart';

class AddItems extends StatelessWidget {
  const AddItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text(
              'Task Title',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
            const TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white, border: OutlineInputBorder()),
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
                          color: Colors.yellow[200]!),
                      CategoryIcon(
                          icon: Icons.cast_for_education_outlined,
                          color: Colors.green[200]!),
                      CategoryIcon(
                          icon: Icons.travel_explore_outlined,
                          color: Colors.orange[200]!),
                      CategoryIcon(
                          icon: Icons.local_grocery_store_outlined,
                          color: Colors.purple[200]!),
                      CategoryIcon(
                          icon: Icons.health_and_safety_outlined,
                          color: Colors.pink[200]!),
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
                const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)),
                            suffixIcon: Icon(
                              Icons.calendar_today,
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                        width: 10), // Add a SizedBox for horizontal spacing
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black87),
                        cursorColor: Colors.black87,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black87)),
                            suffixIcon: Icon(
                              Icons.schedule_outlined,
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Notes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
