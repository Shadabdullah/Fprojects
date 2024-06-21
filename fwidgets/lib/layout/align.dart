import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green[200],
              width: 200,
              height: 200,
              child: const Align(
                  alignment: Alignment.bottomCenter, child: Text("Align")),
            )
          ],
        ),
      ),
    );
  }
}
