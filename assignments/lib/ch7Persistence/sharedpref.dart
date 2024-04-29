import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ch7HomePage extends StatefulWidget {
  const Ch7HomePage({Key? key}) : super(key: key);

  @override
  State<Ch7HomePage> createState() => _Ch7HomePageState();
}

class _Ch7HomePageState extends State<Ch7HomePage> {
  int _count = 5;

  @override
  void initState() {
    super.initState();
    _loadInt();
  }

  Future<void> _loadInt() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _count =
          prefs.getInt('count') ?? _count; // Use 'count' instead of '_count'
    });
  }

  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _count = (prefs.getInt('count') ?? 5) + 1;
      prefs.setInt('count', _count); // Use 'count' instead of 'counter'
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times: ',
            ),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
