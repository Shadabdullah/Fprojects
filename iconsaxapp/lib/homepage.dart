import 'package:flutter/material.dart';

class IconsaxHomePage extends StatelessWidget {
  const IconsaxHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "IconsaxApp",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
