import 'package:flutter/material.dart';
import 'package:sqdata/utils/dbhelper.dart';
import 'package:sqdata/widgets/itemcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> groceryItems = [];
  bool _isLoading = true;

  void _refreshData() async {
    final data = await DatabaseHelper.getItems();
    setState(() {
      groceryItems = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  void showMyForm(int? id) async {
    if (id != null) {
      // id == null -> create new item
      // id != null -> update an existing item
      final existingData =
          groceryItems.firstWhere((element) => element['id'] == id);
      _titleController.text = existingData['title'];
      _descriptionController.text = existingData['description'];
    }

    showModalBottomSheet(
        context: context,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) => Container(
              padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                // prevent the soft keyboard from covering the text fields
                bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(hintText: 'Title'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(hintText: 'Description'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      // Save new data
                      if (id == null) {
                        await addItem();
                      }

                      // if (id != null) {
                      //   await updateItem(id);
                      // }

                      // Clear the text fields
                      _titleController.text = '';
                      _descriptionController.text = '';

                      // Close the bottom sheet
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'Create New' : 'Update'),
                  )
                ],
              ),
            ));
  }

// Insert a new data to the database
  Future<void> addItem() async {
    await DatabaseHelper.createItem(
        _titleController.text, _descriptionController.text);
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        centerTitle: true,
        title: Text(
          'SQFLITE',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : groceryItems.isEmpty
              ? const Center(
                  child: Text('No Items Are Available'),
                )
              : Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                      itemCount: groceryItems.length,
                      itemBuilder: (context, index) {
                        final title = groceryItems[index]['title'];
                        final description = groceryItems[index]['description'];
                        return ItemCard(
                          title: title,
                          description: description,
                        );
                      }),
                ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green[100],
        onPressed: () => showMyForm(null),
        child: Icon(Icons.add),
      ),
    );
  }
}
