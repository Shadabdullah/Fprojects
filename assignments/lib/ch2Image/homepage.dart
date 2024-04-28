import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ch2Home extends StatelessWidget {
  const Ch2Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[200],
        title: const Text(
          'BASIC STATE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text(
              '$count',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2))),
                      child: const Text(
                        'Increment',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2))),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count -= 1;
                      });
                    },
                    child: const Text(
                      'decrement',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2))),
                  ),
                ],
              ),
            ),
            const Expanded(
                child: SizedBox(
              height: 10,
            ))
          ],
        ),
      ),
    );
  }
}
