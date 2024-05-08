import 'package:flutter/material.dart';

class ClipRects extends StatelessWidget {
  const ClipRects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[200],
          title: const Text(
            "CLIP",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRect(
            child: Align(
              alignment: Alignment.center,
              heightFactor: .8,
              child: Container(
                color: Colors.pink[200],
                width: double.infinity,
                height: 200,
                child: const Center(
                  child: Text("CLIP",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        )));
  }
}
